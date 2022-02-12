##Data Preparation
library(tidyverse)
library(haven)

##Removing tagged missing values from df
df <- zap_missing(df)

##Recoding education level variable
#unique(df$eisced)
df <- subset(df, !(df$eisced %in% c(0,55,NA)))
#mean(df$eisced)

##Recoding climate change variable
#unique(df$clmchng)
df <- subset(df, !(is.na(df$clmchng)))
#mean(df$clmchng)
