
FROM quay.io/jupyter/r-notebook:r-4.3.3
# install necessary packages for analysis

# Install required R packages
RUN conda install -y \
    r-ggally=2.2.1 \
    r-rsample=1.2.0 \
    r-leaps=3.1 \
    r-metrics=0.1.4 \
    r-yardstick=1.3.0 \
    r-tidyverse=2.0.0 \
    r-dplyr=1.1.4
