# Wine Quality Analysis 🍷

## Contributors/Authors
- Felix Li
- Gurman Gill
- Dia Zavery
- Steve He

## Project Summary

This analysis project attempted to explore the predictive relationships between the physicochemical properties of wine and its quality, utilizing regression analysis and a forward selection algorithm to identify key predictors. Our investigation was motivated by the wine industry's increasing reliance on data analysis and machine learning to enhance wine quality assessments, aiming to decode the complex interplay between a wine's chemical makeup and its sensory appeal. Despite the sophisticated methodology and the comprehensive dataset from the [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/wine+quality), our findings revealed the model's limited predictive capability, with a low R-squared value highlighting a significant portion of unexplained variability in wine quality. This outcome, while not entirely unexpected given the nuanced nature of wine quality determination, shows the limitations of linear regression models in capturing the intricate factors that influence wine quality. The analysis points to potential areas for improvement, such as incorporating more or better-quality data, considering additional variables, and employing more complex modeling techniques. Our study thus not only contributes to the academic discourse on predictive modeling in the wine industry but also sets the stage for future research that could leverage advanced analytics to unravel the complexities of wine quality assessment, supporting the industry's pursuit of excellence and innovation in wine production and evaluation.

To emphasize our dedication to reproducibility and trustworthiness, our project leverages renv for capturing our R computational environment, ensuring that our analysis can be precisely replicated. Our GitHub repository, structured for clarity and ease of use, combines literate programming within our analysis to integrate code and narrative seamlessly. By documenting our environment and adopting transparent development practices, including issue tracking and contributing guidelines, we not only uphold the integrity of our work but also support the broader data science community in pursuing reproducible research.

## How to Run This Analysis

### Prerequisites

- Ensure you have R installed on your system. The project was developed using R version 4.3.2. You can download R from [The Comprehensive R Archive Network (CRAN)](https://cran.r-project.org/).
- Docker is required for running the analysis in a containerized environment. Download Docker from [Docker's official website](https://www.docker.com/).
  

### Setting Up the Environment

#### Using Docker


1. **Clone the Repository**: If you haven't already, clone the project repository to your local machine using the following command in your terminal:

   ```
   git clone https://github.com/DSCI-310-2024/DSCI_310_Group_6.git
   ```

2. **Navigate to the Project Directory**: Change your directory to the cloned repository:

   ```
   cd DSCI_310_Group_6
   ```

3. **Ensure your Docker engine is running** and pull our Docker image locally for the analysis:

   ```
   docker pull felix12342/dsci310-dockerfile-milestone2:latest
   ```


5. **Launch the Analysis Container**: Use Docker Compose to build and run the containerized environment. First clear all previous analysis using ``make clean``.

   ```
   docker-compose run --rm analysis-env make clean
   ```

6. **Run the analysis using ``make all``.**

   ```
   docker-compose run --rm analysis-env make all
   ```

The rendered pdf and html reports can be found under ``reports/wine.pdf`` and ``reports/wine.html``.

### Running the Tests

To run our tests, do the following:

```
docker-compose run --rm analysis-env make test
```

This command should trigger the testthat test scripts.

## Dependencies

This project relies on several R packages for data manipulation, analysis, and visualization. Ensure you have the following installed:

- dplyr
- tidyr
- ggplot
- docopt
- broom


## Licenses

This project is licensed under the following:

- [MIT License](./LICENSE.md). - contained in `LICENSE.md`

_Please refer to `LICENSE.md` for detailed licensing information._

## Dataset Acknowledgement

This project utilizes the UCI Machine Learning Repository Wine Quality (https://archive.ics.uci.edu/dataset/186/wine+quality) dataset. The two datasets included are related to red and white vinho verde wine samples, from the north of Portugal. The goal behind the dataset is to model wine quality based on physicochemical tests.

## Goal of Analysis

The primary objective of this analysis project was to unveil the intricate relationships between the physicochemical properties of wine and its perceived quality, leveraging regression analysis and a forward selection algorithm for identifying the most impactful predictors. Motivated by the burgeoning integration of data analysis and machine learning in the wine industry to enhance quality assessments, our analysis aimed to bridge the gap between the chemical composition of wine and its sensory appeal to consumers. By dissecting the complex interplay of wine's chemical attributes and their influence on quality, we sought to construct a predictive model capable of forecasting wine quality with a significant degree of accuracy.
