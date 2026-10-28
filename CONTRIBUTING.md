# How the files are organized

Each day has its own folder (`Day1/` ... `Day4/`), and the files in it are numbered in the order they are used in the course:

| Pattern | What it is | Example |
|---|---|---|
| `NN_topic.Rmd` | Lecture slides (beamer), compiled to `NN_topic.pdf` | `Day1/03_experimental_design.Rmd` |
| `NNa_lab_topic.Rmd` | Practical belonging to lecture `NN` (letters `a`, `b`, `c`, ... if there are several), compiled to `.html` | `Day1/03a_lab_stratified_sampling.Rmd` |
| `NN_lab_topic.Rmd` | Stand-alone practical, with its own number | `Day2/01_lab_wrangling_targeted_dm.Rmd` |
| `DayN/extra/` | Material not used in the current course outline | `Day3/extra/faahko.Rmd` |

All names are lowercase, with words separated by `_`, so a folder listing follows the course order.

The slides are rendered with `rmarkdown::render()` from their own folder and share two files at the root of the repository: `beamer_preamble.tex` (Warsaw theme settings) and `beamer_filter.lua` (turns the coloured boxes, `::: box-red`, `::: box-key`, ..., into beamer blocks). Images come from the local `images/` folder, which is not part of the repository; `data/` only contains the two small datasets used in the practicals.

# The website

The course site (https://pietrofranceschi.github.io/Metabolomics_lectures/) is built with [Hugo](https://gohugo.io) from the README files, so the same text works on GitHub and on the site:

| File | Becomes |
|---|---|
| `README.md` | the home page (intro and the cards of the four days) |
| `DayN/README.md` | the page of that day, at `DayN/`; its first `# heading` is the page title |
| `DayN/*`, `data/*` | published as they are, so the relative links in the READMEs keep working |

To add a lecture, render it and add its link to the README of its day, relative to the day folder (`03_experimental_design.pdf`, `../data/...`).

The rest of the machinery:

- `hugo.toml`: settings, and the "mounts" that tell Hugo which repository files are pages and which are plain files to copy.
- `layouts/`: the HTML templates. `baseof.html` is the frame of every page (top and bottom bars), `home.html` the home page, `section.html` adds the previous/next day links, `_partials/title.html` reads the page title from the README.
- `assets/css/style.css`: the look, modelled on the beamer slides.
- `.github/workflows/hugo.yml`: on every push to `main`, GitHub Actions installs Hugo, builds the site and publishes it (Settings → Pages → Source is set to "GitHub Actions").

Preview locally with `hugo server` from the repository root, then open http://localhost:1313/Metabolomics_lectures/; the page reloads at every save.
