City evictions in South Carolina (joined with city boundaries)
================
Erik Strand
2020-01-30

  - [EDA](#eda)

``` r
# Libraries
library(tidyverse)

# Parameters

file_evictions <- here::here("data/city-joined.rds")
temp <- here::here("data/city-evictions.rds")
#===============================================================================
# Read in data

temp2 <- read_rds(temp)
evictions <- read_rds(file_evictions)
```

## EDA

``` r
evictions %>% 
  arrange(desc(evictions))
```

    ## # A tibble: 397 x 4
    ##    city_id name             evictions geometry
    ##      <int> <chr>                <dbl> <list>  
    ##  1 4550875 North Charleston     3660. <XY>    
    ##  2 4516000 Columbia             2225. <XY>    
    ##  3 4513330 Charleston           1546. <XY>    
    ##  4 4562395 St. Andrews          1383. <XY>    
    ##  5 4525810 Florence             1097. <XY>    
    ##  6 4519285 Dentsville            769. <XY>    
    ##  7 4549075 Myrtle Beach          729. <XY>    
    ##  8 4501360 Anderson              642. <XY>    
    ##  9 4532065 Hanahan               529. <XY>    
    ## 10 4529815 Goose Creek           480. <XY>    
    ## # … with 387 more rows

North Charleston, S.C. had the most evictions in 2016 with 3,660.10.
