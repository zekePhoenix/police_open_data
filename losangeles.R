# Los Angeles Police Department - Open Crime Data

# CSV link for 2022 crime: https://data.lacity.org/resource/2nrs-mtv8.csv

# libraries

#library(geojsonsf)
#library(sf)
library(jsonlite)
library(tidyverse)
library(lubridate)
library(RSocrata)

# data
lapd.url.csv <- "https://data.lacity.org/resource/2nrs-mtv8.csv"
lapd.url.json <- "https://data.lacity.org/resource/2nrs-mtv8.json"

crime_lapd <- fromJSON(lapd.url.json) %>% as.data.frame()
        
crime_lapd <- read_csv(lapd.url,n_max = Inf)

crime_lapd <- read.socrata(lapd.url.csv)


