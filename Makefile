# Search path
VPATH = data data-raw eda reports scripts

# Processed data files
DATA = city-boundaries.rds city-evictions.rds city-joined.rds

# EDA studies
EDA = city-evictions.md

# Reports
REPORTS =

# All targets
all : $(DATA) $(EDA) $(REPORTS)

# Data dependencies
city-joined.rds : city-boundaries.rds city-evictions.rds

# EDA study and report dependencies
city-evictions.md : city-joined.rds

# Pattern rules
%.rds : %.R
	Rscript $<
%.md : %.Rmd
	Rscript -e 'rmarkdown::render(input = "$<", output_options = list(html_preview = FALSE))'
