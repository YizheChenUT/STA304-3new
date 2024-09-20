#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("starter_folder-main/data/raw_data/raw_data.csv")


cleaned_data <- raw_data %>%
  janitor::clean_names() %>%
  separate(time_period, into = c("year", "month"), sep = "-") %>%
  mutate(date = ymd(paste(year, month, "01", sep = "-"))) %>%
  mutate(marriage_licenses = as.numeric(marriage_licenses)) %>%
  select(date, civic_centre, marriage_licenses) %>%
  drop_na()
#### Save data ####
write_csv(cleaned_data, "starter_folder-main/data/analysis_data/analysis_data.csv")
