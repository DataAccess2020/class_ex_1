## First version of exploratory plots

# p_edu<- ggplot(df, aes(eisced)) +
#   geom_bar()
# ggsave(p_edu, 
#        filename = here::here("fig/edu.tiff"),
#        device = "tiff",
#        width = 6, height = 4, units = "in",
#        dpi = 600,
#        compress = "lzw")
#plot histogram climate change belief
# p_clm <- ggplot(df, aes(clmchng)) +
#   geom_bar()
# ggsave(p_clm, 
#        filename = here::here("fig/clm.tiff"),
#        device = "tiff",
#        width = 6, height = 4, units = "in",
#        dpi = 600,
#        compress = "lzw")