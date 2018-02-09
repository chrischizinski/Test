.libPaths("P:/RLibrary2")
library(tidyverse)

fish_data <- read_csv("Gaeta_etal_CLC_data_1.csv")

fish_data %>% 
  mutate(length_cat = ifelse(length>300,"big", "small")) %>% 
  filter(scalelength>=1)-> fish_data_cat

fish_data_cat %>% 
  filter(annnumber == "EDGE")  %>% 
ggplot() +
  geom_point(aes(x = length, y = scalelength, colour = as.factor(lakeid)), alpha = 0.25) +
  labs(x = "Fish length", y = "Scale length") +
  coord_cartesian(ylim = c(0,10), xlim = c(0,450), expand = FALSE) +
  theme_classic() + 
  theme(legend.position = "none")
