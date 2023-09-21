# Multi-omics data integration

This repository contains materials for **Multi-omics data integration hackathon** held during [#NGSprint2021](https://ngschool.eu/ngsprint), [#NGSchool2022: Machine Learning in Computational Biology](https://ngschool.eu/ngschool2022), and [#NGSchool2023: Advances in Computational Biology](https://ngschool.eu/ngschool2022).

### Running the tutorial materials

First clone or download and unpack this repository.

#### Option 1: Local 

To run the tutorial materials you will need:

1. The Jupyter notebook with the R language support:

  - Jupyter Notebook [(installation information)](https://jupyter.org/install)
  - R from CRAN-R [(download from here)](https://cloud.r-project.org)
  - IRKernel which enables the usage of R from the notebooks [(see tutorial here)](https://towardsdatascience.com/how-to-run-r-scripts-in-jupyter-15527148d2a)

2. R packages (see the instructions in the *set_up.R* file)

3. python3.6+ [(download from here)](https://www.python.org/downloads)

4. SUMO: the subtyping tool for multi-omic data [(installation information)](https://github.com/ratan-lab/sumo)

#### Option 2: Docker container

To run the tutorial materials in docker environment you will need to:

1. Install Docker Engine (https://docs.docker.com/engine/install/ubuntu)

2. Get the image. **Important**: *'~/ngs22'* path (the first part of *-v* argument) should be changed into the path to the *multi-omics-hackathon* directory you cloned from this repository:

    - online: 
    
    ```
    docker run --rm -d -p 8585:8888 -e JUPYTER_TOKEN=ngs22 -v ~/ngs22:/opt/app/data/ --name ngs22_reticulate ngschool/ngs22_reticulate:clustering
    ```
    
    - local:

    ```
    docker run --rm -d -p 8585:8888 -e JUPYTER_TOKEN=ngs22 -v ~/ngs22:/opt/app/data/ --name ngs22_reticulate docker.ngschool.eu/ngs22_reticulate:clustering
    ```
    
3. JupyterLab runs on localhost:8585

### Resources & Aknowledgements

A significant portion of included materials was created based on very informative "Multi-omics Analysis" chapter by Jonathan Ronen from the "Computational Genomics with R" book available [here](https://compgenomr.github.io/book/multiomics.html) under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).

The Acute Myleoid Leukemia (AML) is availble [here](http://acgt.cs.tau.ac.il/multi_omic_benchmark/download.html). The data was pre-processed and made available as a part of following paper: *Rappoport, N., & Shamir, R. (2018). Multi-omic and multi-view clustering algorithms: review and cancer benchmark. Nucleic Acids Research, 46(20), 10546–10562. https://doi.org/10.1093/nar/gky889*

SUMO package documentation detailing example usage is available [here](https://python-sumo.readthedocs.io/en/latest)
