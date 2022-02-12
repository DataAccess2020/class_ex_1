library(tidyverse)

#regression model
reg <- lm(climate_chng ~ educ_level, data = df_subset )
summary(reg)

# regression output table
sjPlot::tab_model(reg, file=here::here('output/regression.html'))