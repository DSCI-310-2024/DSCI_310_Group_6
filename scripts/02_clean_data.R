library(docopt)
library(tidyverse)

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

data <- read.csv(input_path, header = TRUE, sep = ";")

# Data cleaning and preprocessing

cleaned_data <- data %>%
  # Remove rows with missing values
  drop_na() %>%
  # Convert quality to a factor
  mutate(quality = factor(quality)) %>%
  # Example transformation: centering and scaling numeric variables
  mutate_if(is.numeric, scale)

# Save the cleaned and preprocessed data
write.csv(cleaned_data, output_path, row.names = FALSE)

message("Data cleaned and saved to: ", output_path)
