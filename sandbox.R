library(tidyverse)
raw <- read.csv("Data/smartphone.csv")
set.seed(28640)
smartphone <- raw |> 
  slice_sample(n = 1000) |> 
  select(age:academic_work_impact)