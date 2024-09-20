#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Simulate data ####
# [...ADD CODE HERE...]

set.seed(304)

if (!dir.exists("data")) {
  dir.create("data")
}

n_days <- 365 # days in one year
dates <- seq.Date(as.Date("2023-01-01"), by = "day", length.out = n_days)

licence_counts <- rpois(n_days, lambda = 10)

simulated_data <- data.frame(
  Date = dates,
  Licence_Count = licence_counts
)

write.csv(simulated_data, "data/simulated_marriage_licences.csv", row.names = FALSE)

