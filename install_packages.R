# Installs every R package used by the notebooks in notebooks/.
# Run once from an R session:  source("install_packages.R")
# R version used for the thesis: 4.5.0

if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
if (!requireNamespace("remotes",     quietly = TRUE)) install.packages("remotes")

# Bioconductor
BiocManager::install(c("phyloseq", "DESeq2"), update = FALSE, ask = FALSE)

# CRAN
install.packages(c(
  "vegan", "openxlsx", "dplyr", "tidyr", "tibble", "ggplot2", "ggrepel",
  "ggdendro", "UpSetR", "dunn.test", "scales"
))

# GitHub
remotes::install_github("pmartinezarbizu/pairwiseAdonis/pairwiseAdonis")

# Jupyter kernel for R (needed to open the notebooks in Jupyter / VSCodium)
install.packages("IRkernel")
IRkernel::installspec()
