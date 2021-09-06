# This file contains intallation instructions for packages required to run Find_molecular_subtypes_TCGA.ipynb. 

# We will need:
#  - tidyverse and plyr for data exploration and wrangling,
#  - ComplexHeatmap, ggalluvial and ggpubr for plotting,
#  - FactoMineR, NMF, PINSPlus and iClusterPlus for data integration.

# Hint: Try attaching required packages before the installation to check if they are not already installed on your machine / in your environment.
library(plyr)
library(tidyverse)
library(ComplexHeatmap)
library(ggalluvial)
library(ggpubr)
library(FactoMineR)
library(PINSPlus)
library(iClusterPlus)
library(RColorBrewer)
library(tsne)

# Install Bioconductor packages
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("ComplexHeatmap")
BiocManager::install("iClusterPlus")

# Install other required packages
install.packages(c('plyr', 'tidyverse', 'ggalluvial', 'ggpubr', 'FactoMineR', 'PINSPlus', 'RColorBrewer', 'tsne'))
