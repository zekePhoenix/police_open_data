# Washington DC Metro Police Department - Open Crime Data

# geoJSON link for 2022 crime: https://opendata.arcgis.com/datasets/f9cc541fc8c04106a05a1a4f1e7e813c_4.geojson

# libraries

library(geojsonsf)
library(sf)
library(tidyverse)
library(lubridate)

#data

dc.url <- "https://opendata.arcgis.com/datasets/f9cc541fc8c04106a05a1a4f1e7e813c_4.geojson"

crime_dc <- geojson_sf(dc.url) %>% as_tibble()

crime_dc2 <- crime %>% 
        mutate(REPORT_DAT = ymd_hms(REPORT_DAT))
 