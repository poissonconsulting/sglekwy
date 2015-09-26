library(devtools)
library(magrittr)
library(dplyr)

rm(list = ls())

lek <- read.csv("data-raw/SG_Lek_Observations_1948_2015.csv", stringsAsFactors = TRUE)

lek$Comments <- NULL

lek_wg <- read.csv("data-raw/lek_wg_li150828.csv", stringsAsFactors = TRUE)

lek %<>% left_join(lek_wg, by = "LekID")

lek$LekID %<>% factor()

devtools::use_data(lek, overwrite = TRUE)
