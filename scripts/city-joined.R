# Joins data on evictions in South Carolina cities with shapefiles of city boundaries.
# Data from the Eviction Lab at Princeton University.
# https://data-downloads.evictionlab.org/

# Author: Erik Strand
# Version: 2020-01-29

# Libraries
library(tidyverse)

# Parameters

city_evictions <-
  "/Users/erik_strand/github/_sc-evictions_/data/city-evictions.rds"

city_boundaries <-
  "/Users/erik_strand/github/_sc-evictions_/data/city-boundaries.rds"

file_path <-
  here::here("data/city-joined.rds")

#===============================================================================

read_rds(city_evictions) %>%
  left_join(
    read_rds(city_boundaries),
    by = c("city_id" = "city_id", "name" = "name")
  ) %>%
  write_rds(file_path)
