library(testthat)
library(dplyr)
context("checks that column names are valid")

base_data <- read.csv('../data/rodent_abundance.csv', 
                      stringsAsFactors = F)
correct_columns <- c("period", "BA", "DM", "DO","DS","NA.","OL",
                     "OT","PB","PE","PF","PH","PI","PL", "PM",
                     "PP","RF","RM","RO","SF","SH","SO")

test_that("column names are valid", {
  
  expect_true(all(colnames(base_data) %in% correct_columns))
  
})
