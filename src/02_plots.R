# Library -----------------------------------------------------------------
library(tidyverse)


# Box plot - Educ_level~Climate_chng --------------------------------------

# plotting
df_subset %>%
  group_by(educ_level) %>% 
  summarise(climate_mean = mean(climate_chng),
            n = n()) %>% 
  ggplot(., aes(x = educ_level, y = climate_mean))+
  geom_point(aes(color = educ_level, size = n),
             shape = 18)+
  labs(x = "Education Level", 
       y = "Climate change mean",
       title = "Mean climate change belief for Education levels")+
  guides(color = 'none')+
  ylim(1.4, 1.6)

# save plot
ggsave(p_reg, 
       filename = here::here("fig/edu-clm.tiff"),
       device = "tiff",
       width = 6, height = 4, units = "in",
       dpi = 600,
       compress = "lzw")

# Regression plot ---------------------------------------------------------

p_reg <- ggplot(df_subset, aes(x = as.numeric(educ_level), y = climate_chng)) +
  geom_smooth(method = "lm")+
  labs(x = "Education Level", 
       y = "Climate change mean",
       title = "Regression plot")

## save plot
ggsave(p_reg, 
       filename = here::here("fig/reg.tiff"),
       device = "tiff",
       width = 6, height = 4, units = "in",
       dpi = 600,
       compress = "lzw")
#is this significant?
