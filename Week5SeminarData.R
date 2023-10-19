# B1700 Week 5 Practice Data Guest Seminar

library(ggplot2)
library(tidyverse)
library(tidyr)
library(naniar)

# ----- Upload Data File -----
strengthdata <- readxl::read_excel("/Users/seanmccrone/Desktop/MASTERS DEGREE/Course Material/B1700/Week 5/Seminar Data/Strength Testing Data.xlsx")
# ----- Summary of Data File -----
summary(strengthdata)
# ----- Cleaning Data File -----
##### Converting Variables from Character to Numeric/Integer #####
strengthdata <- strengthdata %>%
  mutate(across(2:5, as.integer))
# Code to remove our specific row of data from our data frame
strengthdata <- strengthdata %>%
  slice(-11)




