library(tidyverse)
library(ggplot2)
#PREPARE
raw <- read.csv("Data/smartphone.csv")
set.seed(28640)
smartphone <- raw |> 
  slice_sample(n = 1000) |> 
  select(age:academic_work_impact)
write.csv(smartphone, "Data/smartphone.csv")

#VISUALIZE
ggplot(smartphone,
        aes(x = age,
            y = sleep_hours,
            color = gender)) +
  geom_boxplot()
