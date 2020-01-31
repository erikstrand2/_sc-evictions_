# Pulls in boundary shapefiles for South Carolina cities.
# Data from the Eviction Lab at Princeton University.
# https://data-downloads.evictionlab.org/

# Author: Erik Strand
# Version: 2020-01-29

# Libraries
library(tidyverse)
library(sf)

# Parameters

file_url <-
  "https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.geojson"

file_path <-
  here::here("data/city-boundaries.rds")

#===============================================================================

read_sf(file_url) %>%
  select(
    c(
      "city_id" = GEOID,
      "name" = n
    )
  ) %>%
  mutate(city_id = as.integer(city_id)) %>%
  write_rds(path = file_path)

