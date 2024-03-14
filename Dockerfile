
FROM quay.io/jupyter/r-notebook:r-4.3.3
# install necessary packages for analysis
RUN conda install -y \
    r-ggally
