files <- list.files(pattern = "[.]Rmd$", recursive = TRUE, full.names = TRUE)
for (f in files) rmarkdown::render(f)