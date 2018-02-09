.libPaths("P:/RLibrary2")
library(tidyverse)

fish_data <- read_csv("Gaeta_etal_CLC_data.csv")

fish_data %>% 
  mutate(length_cat = ifelse(length>300,"big", "small")) %>% 
  filter(scalelength>=1)-> fish_data_cat
