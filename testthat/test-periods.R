library(testthat)
library(dplyr)
context("checks that period values are valid")

<<<<<<< HEAD
base_data <- read.csv('../data/data.csv', 
=======
base_data <- read.csv('../data/rodent_abundance.csv', 
>>>>>>> de1c837f9c96a1e4cf37fce733144a4106c1c01a
                      stringsAsFactors = F)

test_that("period numbers are valid", {
  
  expect_true(all(base_data$period < 1000))
  
})
