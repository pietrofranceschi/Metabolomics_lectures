-- Pandoc filter for the beamer decks: maps the classes used in the Rmd
-- sources (inherited from the reveal.js / CRI style) onto beamer constructs.
--
--   ::: box-red              -> alertblock
--   ::: box-key              -> block
--   ::: box-lightgreen       -> exampleblock
--   ::: box-blue             -> block
--   ::: {.box-key .fragment} -> same block, revealed with \pause
--   ::: fragment             -> content revealed with \pause
--   ::: center               -> centered content
--   ~~text~~                 -> \alert{text}  (highlight, not strikeout)
--
-- A leading **Title:** (or **Title**) in a box becomes the block title.

local envs = {
  ["box-red"] = "alertblock",
  ["box-key"] = "block",
  ["box-lightgreen"] = "exampleblock",
  ["box-blue"] = "block",
}

local function latex(s) return pandoc.RawBlock("latex", s) end

-- strip the warning emoji: the alertblock already says it
function Str(el)
  local s = el.text:gsub("⚠️", ""):gsub("⚠", "")
  if s ~= el.text then return pandoc.Str(s) end
end

function Strikeout(el)
  return { pandoc.RawInline("latex", "\\alert{") } .. el.content ..
         { pandoc.RawInline("latex", "}") }
end

-- take a leading Strong out of the first paragraph and use it as block title
local function pop_title(blocks)
  local first = blocks[1]
  if not first or first.t ~= "Para" then return "" end
  local inl = first.content
  local i = 1
  while inl[i] and (inl[i].t == "Space" or
                    (inl[i].t == "Str" and inl[i].text == "")) do
    i = i + 1
  end
  if not inl[i] or inl[i].t ~= "Strong" then return "" end
  local title = pandoc.utils.stringify(inl[i]):gsub(":%s*$", "")
  local rest = pandoc.List()
  for j = i + 1, #inl do rest:insert(inl[j]) end
  while rest[1] and (rest[1].t == "Space" or rest[1].t == "SoftBreak"
                     or rest[1].t == "LineBreak") do
    rest:remove(1)
  end
  if #rest == 0 then blocks:remove(1) else first.content = rest end
  return title
end

function Div(el)
  if el.classes:includes("center") then
    local out = pandoc.List({ latex("\\begin{center}") })
    out:extend(el.content)
    out:insert(latex("\\end{center}"))
    return out
  end
  local pause = el.classes:includes("fragment")
  for cls, env in pairs(envs) do
    if el.classes:includes(cls) then
      local title = pop_title(el.content)
      local out = pandoc.List()
      if pause then out:insert(latex("\\pause")) end
      out:insert(latex("\\begin{" .. env .. "}{" .. title .. "}"))
      out:extend(el.content)
      out:insert(latex("\\end{" .. env .. "}"))
      return out
    end
  end
  if pause then
    local out = pandoc.List({ latex("\\pause") })
    out:extend(el.content)
    return out
  end
end

-- An incremental list (\item<+->) leaves beamer's overlay counter one step
-- ahead, so a \pause after it would add an empty overlay (a duplicate page).
-- Within a slide, once an incremental list has been seen, reveal later
-- fragments with \onslide<+-> instead, which uses the counter as it stands.
local function fix_pauses(blocks, state)
  for i, b in ipairs(blocks) do
    if b.t == "Header" and b.level <= 2 then
      state.ahead = false
    elseif b.t == "RawBlock" and b.format == "latex" and b.text == "\\pause" then
      if state.ahead then blocks[i] = latex("\\onslide<+->") end
    elseif b.t == "Div" then
      if b.classes:includes("incremental") then
        state.ahead = true
      else
        fix_pauses(b.content, state)
      end
    end
  end
  return blocks
end

function Pandoc(doc)
  doc.blocks = fix_pauses(doc.blocks, { ahead = false })
  return doc
end
