library(tidyverse)

#regression model
reg <- lm(climate_chng ~ educ_level, data = df_subset )
summary(reg)

# regression output table
sjPlot::tab_model(reg, 
                  title = "Table 1. Linear regression model predicting climate change belief",
                  CSS = list(
                    css.centeralign = 'text-align: left;',
                    css.firsttablecol = 'font-weight: bold;'),
                  file=here::here('output/regression.html'))
# in the regression.html output modify the first caption into h6 on first line.