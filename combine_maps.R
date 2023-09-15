library(grid)
library(gridExtra)
library(ggplot2)

load(paste0(getwd(), "/2023_09_12_global_human_day/viz/maps.Rdata"))

maps_combinded <- grid.arrange(
  ggplotGrob(p_food),
  ggplotGrob(p_experience), 
  nrow = 1, 
  ncol = 2,
  newpage =  F
)

pdf(
  file = paste0(getwd(), "/2023_09_12_global_human_day/viz/maps_combined.pdf"),
  height = 6.5,
  width = 20,
  bg = "black",
)
grid.draw(maps_combinded)
dev.off()

png(
  filename = paste0(getwd(), "/2023_09_12_global_human_day/viz/maps_combined.png"),
  height = 768*2, 
  width = 1366*2, 
  units = "px"
)
grid.draw(maps_combinded)
dev.off()
