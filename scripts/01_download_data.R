library(docopt)

doc <- "
Usage:
  01_download_data.R --input=<input> --output=<output>

Options:
  --input=<input>     Path to the input file (URL or relative local path).
  --output=<output>   Path/filename to write the file to.
"

# Parse command line arguments
opts <- docopt(doc)

# Input and output file paths from command line arguments
input_path <- opts[['--input']]
output_path <- opts[['--output']]

# Function to download or copy the data
download_data <- function(input_path, output_path) {
  if(grepl("^http", input_path)) {
    download.file(input_path, destfile = output_path, method = "auto")
  } else {
    file.copy(input_path, output_path)
  }
}

# Execute the download/copy
download_data(input_path, output_path)

message("Data downloaded/copied to: ", output_path)
