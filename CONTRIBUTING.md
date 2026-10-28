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
