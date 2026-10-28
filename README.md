# Metabolomics Lectures

This repository contains material for a full metabolomics course ideally organized in four days.
The material (which is growing!) covers the following topics:

* General Introduction to metabolomics and study design
* General analytical considerations
* Analysis of a targeted metabolomics data matrix
* Pre processing of Untargeted LC-MS data by `xcms`
* NMR
* Introduction to machine learning and multivariate tools
* Statistical analysis of metabolomics data by univariate tools


## Day One

* [Our R cheatsheet](Day1/00_lab_r_cheatsheet.html) - [Rmd](Day1/00_lab_r_cheatsheet.Rmd)
    - Practical: `tidyverse` & `purrr` hands on
* [What is Metabolomics](Day1/01_what_is_metabolomics.pdf)
* [Reproducibility and Good Practices in Science](Day1/02_reproducibility.pdf)
    - Three case studies: Benveniste/homeopathy (Nature 1988), the Potti scandal at Duke, chocolate & Nobel prizes (NEJM 2012)
* [Experimental design](Day1/03_experimental_design.pdf)
    - Practical: stratified random sampling [html](Day1/03a_lab_stratified_sampling.html) - [Rmd](Day1/03a_lab_stratified_sampling.Rmd)
* [Practical Considerations on the study design](Day1/04_practical_considerations.pdf)
* [Group Activity: design your study](Day1/05_group_activity_study_design.pdf)
* [Data analysis in metabolomics](Day1/06_data_analysis.pdf)
    - Practical: [Fat data matrices and false positives](Day1/06a_lab_false_positives.html) - [Rmd](Day1/06a_lab_false_positives.Rmd)
* [Statistical testing and effect size](Day1/07_statistical_testing_effect_size.pdf)
* [Multiple testing](Day1/08_multiple_testing.pdf) - [Rmd](Day1/08_multiple_testing.Rmd)
    - FWER, Bonferroni, Benjamini-Hochberg FDR, p-value histograms, volcano plots

## Day Two

* Practical: [Wrangling a targeted metabolomics data matrix](Day2/01_lab_wrangling_targeted_dm.html) -  [Rmd](Day2/01_lab_wrangling_targeted_dm.Rmd)

### Focus Topics
* [Missing values and imputation](Day2/02_missing_values.pdf)
* [Distribution of the variables](Day2/03_variable_distribution.pdf)
* [Variable scaling and Sample normalization](Day2/04_scaling_normalization.pdf)
* [Multivariate visualization: PCA](Day2/05_pca.pdf)

### Datasets
* [KOMP data](data/KOMP_data_targeted.RData)
* [Rubus data](data/rubus_targeted.csv)

## Day Three

* [Processing LC-MS data with `xcms`](Day3/01_processing_lc_ms.html)
* Practical: Inspecting raw data [html](Day3/01a_lab_inspecting_raw_data.html), [Rmd](Day3/01a_lab_inspecting_raw_data.Rmd)
* Practical: Peak picking [html](Day3/01b_lab_peak_picking.html), [Rmd](Day3/01b_lab_peak_picking.Rmd)
* Practical: Retention time correction and feature definition [html](Day3/01c_lab_rt_correction_feature_definition.html), [Rmd](Day3/01c_lab_rt_correction_feature_definition.Rmd)
* [SW resources for preprocessing](Day3/02_software_resources_preprocessing.html)
* [Some words on annotation](Day3/03_annotation.html)
* Practical: Fragmentation Spectra [html](Day3/03a_lab_fragmentation_spectra.html), [Rmd](Day3/03a_lab_fragmentation_spectra.Rmd)
* Practical: Compound Annotation [html](Day3/03b_lab_compound_annotation.html), [Rmd](Day3/03b_lab_compound_annotation.Rmd)  

### Datasets

* Wines Dataset

## Day Four

* Biomarker discovery: the univariate way (see also [Multiple testing](Day1/08_multiple_testing.pdf))
* [Machine Learning for Dummies](Day4/01_ml_intro.pdf)
  * [KOMP data](data/KOMP_data_targeted.RData)
* PLS and PLS-DA
* [Decision Trees and Random Forest](Day4/02_decision_trees_random_forest.html)
  * Practical: [html](Day4/02a_lab_random_forest.html), [Rmd](Day4/02a_lab_random_forest.Rmd)



