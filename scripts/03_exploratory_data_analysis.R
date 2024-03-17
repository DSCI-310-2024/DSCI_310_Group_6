library(docopt)
library(ggplot2)
library(tidyverse)

doc <- "
Usage:
  03_exploratory_data_analysis.R --input=<input> --outputprefix=<outputprefix>

Options:
  --input=<input>              Path/filename pointing to the cleaned data.
  --outputprefix=<outputprefix> Path/filename prefix where to write the figures/tables.
"

# Parse command line arguments
opts <- docopt(doc)

# Assign command line arguments to variables
input_path <- opts[['--input']]
output_prefix <- opts[['--outputprefix']]

# Read the cleaned dataset
data <- read.csv(input_path)

# Exploratory Data Analysis (EDA)

# Visualization 1: Distribution of Wine Quality
quality_distribution_plot <- ggplot(data, aes(x = quality)) +
  geom_bar(fill = "steelblue", color = "black") +
  labs(title = "Distribution of Wine Quality", x = "Quality", y = "Count")

# Save the quality distribution plot
ggsave(paste0(output_prefix, "_quality_distribution.png"), quality_distribution_plot, width = 8, height = 6)

# Visualization 2: Correlation Heatmap of Variables
data_numeric <- select(data, where(is.numeric))
correlation_matrix <- cor(data_numeric)
corr_heatmap <- ggplot(data = as.data.frame(as.table(correlation_matrix)),
                       aes(x = Var1, y = Var2, fill = Freq)) +
  geom_tile() +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", midpoint = 0) +
  theme_minimal() +
  labs(title = "Correlation Heatmap of Numeric Variables", x = "", y = "")

# Save the correlation heatmap
ggsave(paste0(output_prefix, "_correlation_heatmap.png"), corr_heatmap, width = 10, height = 8)

message("EDA visualizations created and saved with prefix: ", output_prefix)
