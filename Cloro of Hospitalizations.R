install.packages('fiftystater')
library(ggplot2)
library(fiftystater)

df_state$Latitude <- NULL
df_state$Longitude <- NULL


data("fifty_states")

# map_id creates the aesthetic mapping to the state name column in your data
p <- ggplot(df_state, aes(map_id = State)) + 
  # map points to the fifty_states shape data
  geom_map(aes(fill = Hospitalizations), map = fifty_states) + 
  expand_limits(x = fifty_states$long, y = fifty_states$lat) +
  coord_map() +
  borders(
    database = "state",
    colour = "grey60") +
  ggtitle("Count of Hospitalizations from Salmonella Illnesses (2009-2016)") +
  scale_fill_gradient(
    low = "yellow",
    high = "red") +
  scale_x_continuous(breaks = NULL) + 
  scale_y_continuous(breaks = NULL) +
  labs(x = "", y = "") +
  theme(legend.position = "bottom", 
        panel.background = element_rect(colour = 'red'))

p
