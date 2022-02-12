library(tidyverse)

reg <- lm(clmchng ~ eisced, data = df )
summary(reg)