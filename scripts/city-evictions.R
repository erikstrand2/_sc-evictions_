# Pulls in data on evictions in South Carolina cities.
# Data from the Eviction Lab at Princeton University.
# https://data-downloads.evictionlab.org/

# Author: Erik Strand
# Version: 2020-01-29

# Libraries
library(tidyverse)

# Parameters

file_url <-
  "https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.csv"

file_path <-
  here::here("data/city-evictions.rds")

var_cols <-
  cols_only(
    GEOID = col_integer(),
    year = col_integer(),
    name = col_character(),
    evictions = col_double()
  )

#===============================================================================

read_csv(file_url, col_types = var_cols) %>%
  filter(year == 2016) %>%
  select(-year) %>%
  rename("city_id" = GEOID) %>%
  write_rds(path = file_path)
