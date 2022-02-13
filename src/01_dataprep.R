# Library -----------------------------------------------------------------
library(tidyverse)
library(haven)

# Removing 'tagged missing values' from dataset ---------------------------

df <- zap_missing(df)

# Recoding variable -------------------------------------------------------
##Recoding education level and climate change variable and renaming with meaningful varnames

#explore variables

#unique(df$eisced)
#unique(df$clmchng)

df_subset <- df %>% 
  filter(!(is.na(clmchng & eisced)) & !(eisced %in% c(0,55))) %>% 
  mutate(educ_level = factor(eisced) , climate_chng = clmchng) %>% 
  select(educ_level, climate_chng)


