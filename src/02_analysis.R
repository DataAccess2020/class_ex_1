library(tidyverse)

#plot histogram education level
ggplot(df, aes(eisced)) +
  geom_bar()
#plot histogram climate change belief
ggplot(df, aes(clmchng)) +
  geom_bar()

#regression model
reg <- lm(clmchng ~ eisced, data = df )
summary(reg)

#regression plot
ggplot(df, aes(x = eisced, y = clmchng)) +
  geom_smooth(method = "lm")
