# Wine Quality Analysis 🍷

## Contributors/Authors
- Felix Li
- Gurman Gill
- Dia Zavery
- Steve He

## Project Summary

This project aims to analyze the Wine Quality dataset, focusing on the characteristics that influence the quality of red and white Vinho Verde wines from northern Portugal. Through a comprehensive data analysis process using R, our team will explore physicochemical and sensory variables to understand their impact on wine quality. The goal is to identify key factors that contribute to the classification of wine quality and to predict the quality of wine samples effectively. Our approach will be rooted in reproducible and trustworthy workflows, ensuring that our findings are both reliable and accessible.

## How to Run This Analysis

### Prerequisites

- Ensure you have R installed on your system. The project was developed using R version 4.3.2. You can download R from [The Comprehensive R Archive Network (CRAN)](https://cran.r-project.org/).

### Installing `renv`

If you haven't already installed `renv`, you can do so by running the following command in your R console:

```R
install.packages("renv")
```

### Setting Up the Environment

1. **Clone the Repository**: If you haven't already, clone the project repository to your local machine using the following command in your terminal:

   ```
   git clone https://github.com/DSCI-310-2024/DSCI_310_Group_6.git
   ```

2. **Navigate to the Project Directory**: Change your directory to the cloned repository:

   ```
   cd DSCI_310_Group_6
   ```

3. **Initialize `renv`**: Start the R console in the project directory, then initialize `renv` to install all necessary packages and dependencies:

   ```R
   renv::restore()
   ```

   This command will read the `renv.lock` file in your project directory and install the R packages and versions specified therein.

### Running the Analysis

Once the environment is set up, you can run the analysis by opening the `Wine.ipynb` file in JupyterLab or an equivalent R environment that supports Jupyter notebooks. Ensure you have JupyterLab installed and configured to use the R kernel.

### Updating the Environment

If you install any new R packages or update existing ones, you should update the `renv.lock` file to reflect these changes. This can be done by running the following command in your R console:

```R
renv::snapshot()
```

This command updates the `renv.lock` file, ensuring that other contributors can replicate your environment accurately.


## Dependencies

This project relies on several R packages for data manipulation, analysis, and visualization. Ensure you have the following installed:

- dplyr
- tidyr
- ggplot

_add or remove dependencies based on our specific analysis needs or changes._

## Licenses

This project is licensed under the following:

- [MIT License](./LICENSE.md). - contained in `LICENSE.md`

_Please refer to `LICENSE.md` for detailed licensing information._

## Dataset Acknowledgement

This project utilizes the UCI Machine Learning Repository Wine Quality (https://archive.ics.uci.edu/dataset/186/wine+quality) dataset. The two datasets included are related to red and white vinho verde wine samples, from the north of Portugal. The goal behind the dataset is to model wine quality based on physicochemical tests.

## Goal of Analysis

Our analysis aims to unravel the intricate relationship between the physicochemical properties of wine—specifically pH, residual sugar, chlorides, and sulphates—and their impact on the sensory quality ratings of red and white Vinho Verde wines. By assessing how these selected properties influence the wine's sensory perception, our objective is to quantify their collective impact on wine quality. This seeks not only to provide actionable insights for winemakers to enhance production processes but also to offer guidance to consumers in making informed wine selections. Additionally, our analysis aims to contribute to the academic field of oenology by advancing the understanding of how wine's chemical composition correlates with its perceived quality. Through this approach, we aim to highlight the physicochemical traits that are pivotal in determining high-quality wine, thereby aiding in the optimization of wine production and enriching the overall wine experience for both producers and consumers.
