#New York City Police Department - Open Crime Data

# CSV link for crime: https://data.cityofnewyork.us/resource/5uac-w243.csv

# libraries

#library(geojsonsf)
#library(sf)
library(jsonlite)
library(tidyverse)
library(lubridate)
library(RSocrata)

# data
nypd.url.csv <- "https://data.cityofnewyork.us/resource/5uac-w243.csv"

crime_nypd <- read.socrata(nypd.url.csv)


