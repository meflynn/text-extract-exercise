library(tidyverse)
library(here)

text.df <- read_csv(here("vetaffairs_109_3_20_APR_05_ECONOPP.csv"))

names <- tibble("name" = str_extract(text.df$`US House of Representatives`, "MR\\s\\b[A-Z][a-z]{1,30}\\b")) %>% 
  group_by(name) %>% 
  summarise(count = n())

names2 <- tibble("name" = str_extract(text.df$`US House of Representatives`, "MR\\s\\b[A-Z][a-z]{1,30}\\b")) %>% 
  group_by(name) %>% 
  summarise(count = n())
