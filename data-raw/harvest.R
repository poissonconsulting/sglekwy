library(devtools)
library(magrittr)
library(dplyr)

harvest <- read.csv("data-raw/WorkingGroupHarvest141208.csv", stringsAsFactors = FALSE)

harvest$WorkingGroup[harvest$WorkingGroup == "Big Horn"] <- "Bighorn"

harvest %<>% mutate(
  AdultsYearlings = AdultMales + AdultFemales + YearlingMales + YearlingFemales,
  Chicks = ChickMales + ChickFemales)

harvest %<>% select(Year,
                    WorkingGroup,
                    Harvest,
                    HunterDays,
                    AdultsYearlings,
                    Chicks,
                    NumberOfWings)

bol <- is.na(harvest$NumberOfWings) | harvest$NumberOfWings == 0
harvest[bol, c("AdultsYearlings", "Chicks", "NumberOfWings")] <- NA

harvest %<>% mutate(
  AdultsYearlings = round(AdultsYearlings / 100 * NumberOfWings),
  Chicks = round(Chicks  / 100 * NumberOfWings)) %>%
  mutate(NumberOfWings = AdultsYearlings + Chicks)

harvest %<>% rename(
  ChickWings = Chicks,
  TotalWings = NumberOfWings
)

harvest %<>% select(-AdultsYearlings)

harvest %<>% mutate(
  Harvest = as.integer(Harvest),
  HunterDays = as.integer(HunterDays),
  TotalWings = as.integer(TotalWings),
  ChickWings = as.integer(ChickWings))

message("Upper Snake River set to have no hunting")
harvest[harvest$WorkingGroup == "Upper Snake River", c("Harvest", "HunterDays")] <- 0

harvest$WorkingGroup %<>% factor

use_data(harvest, overwrite = TRUE)
