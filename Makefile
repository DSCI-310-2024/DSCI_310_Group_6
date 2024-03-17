# Makefile 
# Author: Steve He
# date: 2024-03-16

all: data/winequality-red.csv \
     data/cleaned_data.csv \
     results/results_correlation_heatmap.png \
     results/results_quality_distribution.png \
     model/model_actual_vs_predicted_quality.png

# download the original dataset
data/winequality-red.csv:
	Rscript scripts/01_download_data.R --input="https://archive.ics.uci.edu/static/public/186/wine+quality.zip" --output="data/winequality-red.csv"

# clean the data
data/cleaned_data.csv: data/winequality-red.csv
	Rscript scripts/02_clean_data.R --input="data/winequality-red.csv" --output="data/cleaned_data.csv"

# perform exploratory data analysis
results/exploratory_data_analysis_results.txt: data/cleaned_data.csv
	Rscript scripts/03_exploratory_data_analysis.R --input="data/cleaned_data.csv" --outputprefix="results"

# Target for modeling
model/model_results.txt: data/cleaned_data.csv
	Rscript scripts/04_modeling.R --input="data/cleaned_data.csv" --outputprefix="model"

# render to html
reports/wine.html: results reports/wine.qmd
    quarto render reports/wine.qmd --to html

# render to pdf
reports/wine.pdf: results reports/wine.qmd
    quarto render reports/wine.qmd --to pdf

# clean up all generated files
clean:
  rm -f data/winequality-red.csv
	rm -f data/cleaned_data.csv
	rm -f results/results_correlation_heatmap.png
  rm -f results/results_quality_distribution.png
	rm -f model/model_actual_vs_predicted_quality.png
  rm -f reports/wine.qmd
  rm -f reports/wine.html
  rm -f reports/wine.pdf

