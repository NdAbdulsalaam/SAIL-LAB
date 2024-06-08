# Modeling uncertainty

library(tidyverse)
# Load the mtcars dataset
data("mtcars")

#Visualize data distribution
my_data <- mtcars
ggplot(data=my_data, aes(x = mpg, y = qsec)) + geom_point()
