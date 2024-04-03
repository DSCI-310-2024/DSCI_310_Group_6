library(docopt)
library(tidyverse)

# Adjust the path to where your clean_data.R file is located
source("clean/R/clean_data.R")

doc <- "
Usage:
  02_clean_and_preprocess_data.R --input=<input> --output=<output>

Options:
  --input=<input>     Path/filename pointing to the data to be read in.
  --output=<output>   Path/filename where the cleaned/processed data should live.
"

# Parse command line arguments
opts <- docopt(doc)

# Assign command line arguments to variables
input_path <- opts[['--input']]
output_path <- opts[['--output']]

# Data cleaning and preprocessing
data <- read.csv(input_path, header = TRUE, sep = ";")
cleaned_data <- clean_wine_data(data, target_col = 'quality')

# Save the cleaned and preprocessed data
write.csv(cleaned_data, output_path, row.names = FALSE)

message("Data cleaned and saved to: ", output_path)
