library(docopt)
library(ggplot2)
library(tidyverse)
library(broom)

# Source the function definition
source("scatter_plot/function/scatter_plot.R")

doc <- "
Usage:
  04_modeling_and_results_summary.R --input=<input> --outputprefix=<outputprefix>

Options:
  --input=<input>              Path/filename pointing to the cleaned and processed data.
  --outputprefix=<outputprefix> Path/filename prefix for saving the modeling results.
"

# Parse command line arguments
opts <- docopt(doc)

# Assign command line arguments to variables
input_path <- opts[['--input']]
output_prefix <- opts[['--outputprefix']]

# Read the processed dataset
data <- read.csv(input_path)

# Modeling: Linear Regression
model <- lm(quality ~ ., data = data)

# Summary of the model
model_summary <- summary(model)

# Print the summary to the console (Alternatively, you can write this to a file)
print(model_summary)

# Extracting coefficients
coefficients <- tidy(model)

# Visualization: Actual vs Predicted Quality
predictions <- augment(model)

# Generate the plot using the custom function
actual_vs_predicted_plot <- scatter_plot(predictions, ".fitted", "quality", "Actual vs Predicted Wine Quality", "Predicted Quality", "Actual Quality")

# Save the Actual vs Predicted Quality plot
ggsave(paste0(output_prefix, "_actual_vs_predicted_quality.png"), actual_vs_predicted_plot, width = 8, height = 6)

message("Modeling results and visualization created and saved with prefix: ", output_prefix)
