# B1700 Week 5 Practice Data Guest Seminar

library(ggplot2)
library(tidyverse)
install.packages("tidyr")
library(tidyr)
install.packages("naniar")
library(naniar)
strengthdata <- readxl::read_excel("/Users/seanmccrone/Desktop/Strength Testing Data.xlsx")

tidyr::replace_na(strengthdata)
naniar::replace_with_na(data = strengthdata,
                        .predicate = is.character,
                        condition = ~.x == "-")

print(strengthdata, n = 11)



