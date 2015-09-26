library(devtools)
library(magrittr)
library(dplyr)

rm(list = ls())

lek12 <- read.csv("data-raw/SG_Lek_Observations_1948_2012.csv", stringsAsFactors = TRUE)
lek14 <- read.csv("data-raw/SG_Lek_Observations_1948_2014.csv", stringsAsFactors = TRUE)
lek15 <- read.csv("data-raw/SG_Lek_Observations_1948_2015.csv", stringsAsFactors = TRUE)

unique(select(filter(lek12, LekID %in% c(" D-Running Reece", "D-Muddy Cottonwood", "D-Rooster’s Delight",
                         "D-North Sandy Flat Res", "D-Elk Hollow", "G-Red Line Hill")), LekID, Year))

unique(select(filter(lek14, LekID %in% c(" D-Running Reece", "D-Muddy Cottonwood", "D-Rooster’s Delight",
                         "D-North Sandy Flat Res", "D-Elk Hollow", "G-Red Line Hill")), LekID, Year))

unique(select(filter(lek15, LekID %in% c(" D-Running Reece", "D-Muddy Cottonwood", "D-Rooster’s Delight",
                         "D-North Sandy Flat Res", "D-Elk Hollow", "G-Red Line Hill")), LekID, Year))

unique(select(filter(lek12, LekID %in% c("D-Antelope Run Ranch", "D-East Deer Hill", "D-Fremont Butte Well 2C",
                         "D-Fremont Butte Well 2D", "D-Little Fred Satellite", "D-Waldo")), LekID, Year))

unique(select(filter(lek14, LekID %in% c("D-Antelope Run Ranch", "D-East Deer Hill", "D-Fremont Butte Well 2C",
                         "D-Fremont Butte Well 2D", "D-Little Fred Satellite", "D-Waldo")), LekID, Year))

unique(select(filter(lek15, LekID %in% c("D-Antelope Run Ranch", "D-East Deer Hill", "D-Fremont Butte Well 2C",
                         "D-Fremont Butte Well 2D", "D-Little Fred Satellite", "D-Waldo")), LekID, Year))

