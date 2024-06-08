data(state)
head(state.x77)
str(state.x77)

Mod <- data.frame(state.x77)
c(Mod$Population)
apply(state.x77, 2, mean)
apply(state.x77, 2, median)

state.summary <- apply(state.x77, 2, function(x) c(mean(x), sd(x)))
state.summary

state.range <- apply(state.x77, 2, function(x) c(min(x), median(x), max(x)))
state.range

#######
# Example Mapply

population <- state.x77[1:50]
population
area <- state.area
ade <- mapply(function(x, y) x/y, population, area)
ade

region.info <- tapply(population, state.region, function(x) c(min(x), median(x), max(x)))
region.info

data()
t
library(MASS)
library(base)
wunmi <- state.x77 %>% pull(population)

View(state.x77)
