# Metabolomics Lectures

This repository contains material for a full metabolomics course ideally organized in four days.
The material (which is growing!) covers: the following topics:

* General Introduction to metabolomics and study design
* General analytical considerations
* Analysis of a targeted metabolomics data matrix
* Pre processing of Untargeted LC-MS data by `xcms`
* NMR
* Introduction to machine learning and multivariate tools
* Statistical analysis of metabolomics data by univariate tools


## Day One

* [Our R cheatsheet](Day1/Our_R_cheatsheet.html) - [Rmd](Day1/Our_R_cheatsheet.Rmd)
    - Practical: `tidyverse` & `purrr` hands on
* [What is Metabolomics](Day1/Metabolomics.html)
* [Experimental design](Day1/experimental_design.pdf )
    - Practical: [html](Day1/stratified_random_sampling.html) - [Rmd](Day1/stratified_random_sampling.Rmd)
* [Practical Considerations on the study design](Day1/practical_considerations.html)
* [Group Activity: design your study](Day1/Group_activity_study_design.html)
* [Data analysis in metabolomics](Day1/Metabolomics_data_matrix.html)
    - Practical: [Fat data matrices and false positives](Day1/False_Positives.html) - [Rmd](Day1/False_Positives.Rmd) 
* [Statistical testing and effect size](Day1/statisticaltesting_and_effectsize.html)

## Day Two

* Practical: [Wrangling a targeted metabolomics data matrix](Day2/wrangling_targeted_DM.html) -  [Rmd](Day2/wrangling_targeted_DM.Rmd)

### Focus Topics
* [Missing values and imputation](Day2/MissingValues.html)
* [Distribution of the variables](Day2/Variable_distribution.html)
* [Variable scaling and Sample normalization](Day2/Scaling_and_normalization.html)
* [Multivariate visualization: PCA](Day2/PCA.html)

### Datasets
* [KOMP data](Day2/KOMP_data_targeted.RData)
* [Rubus data](Day2/rubus_targeted.csv)

## Day Three

* [Processing LC-MS data with `xcms`](Day3/processing_LC_MS.html)
* Practical: Inspecting raw data [html](Day3/Inspecting_raw_data.html), [Rmd](Day3/Inspecting_raw_data.Rmd)
* Practical: Peak picking [html](Day3/peak_picking.html), [Rmd](Day3/peak_picking.Rmd)
* Practical: Retention time correction and feature definition [html](Day3/rt_corr_feat_def.html), [Rmd](Day3/rt_corr_feat_def.Rmd)
* Practical: Fragmentation Spectra [html](Day3/fragmentation_spectra.html), [Rmd](Day3/fragmentation_spectra.Rmd)
* [Some words on annotation](Day3/annotation.html)
* Practical: Compound Annotation [html](Day3/annotation_exercise.html), [Rmd](Day3/annotation_exercise.Rmd)  
* [SW resources for preprocessing](Day3/software_resources_for_preprocessing.html)


### Datasets
* Wines Dataset


## Day Four

* Biomarker discovery: the univariate way
* False discoveries, and multiple testing
* [Machine Learning for Dummies](Day4/ML_intro.html)
  * [KOMP data](Day2/KOMP_data_targeted.RData)
* PLS and PLS-DA
* [Decision Trees and Random Forest](Day4/Decision_Trees_and_RandomForest.html)
  * Practical: [html](Day4/Random_Forest_in_practice.html), [Rmd](Day4/Random_Forest_in_practice.Rmd)



