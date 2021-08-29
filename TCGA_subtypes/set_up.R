# This file contains intallation instructions for packages required to run Find_molecular_subtypes_TCGA.ipynb. 

# We will need:
#  - TCGAbiolinks to access the TCGA metadata, 
#  - tidyverse for data exploration,
#  - ggalluvial for plotting.

# Hint: Try attaching required packages before the installation to check if they are not already installed on your machine / in your environment.
library(tidyverse)
library(ggalluvial)
library(TCGAbiolinks)

# Some of the TCGAbiolinks  package dpendencies are currently (as of August 2021) not available on CRAN. 
# If you encounter the installation issues, you may need to install some of them from source. 
# You can find downloaded sorce packages in the R_pkgs directory.

# Install missing dependencies
install.packages('postlogic')
for (pkg in list.files('R_pkgs', pattern = ".tar.gz", full.names = TRUE)){
  install.packages(pkg, repos=NULL, type="source")  
}

# Install TCGAbiolinks
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("TCGAbiolinks")

# Install other required packages
install.packages('tidyverse')
install.packages('ggalluvial')
