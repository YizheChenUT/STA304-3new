#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Test data ####
library(testthat)

simulated_data <- read.csv("data/simulated_marriage_licences.csv")

test_that("Dataset has correct number of rows", {
  expect_equal(nrow(simulated_data), 365)
})

test_that("Licence_Count >=0", {
  expect_true(all(simulated_data$Licence_Count >= 0))
  expect_true(all(simulated_data$Licence_Count == as.integer(simulated_data$Licence_Count)))
})

