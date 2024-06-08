setwd("C:/Users/Open User/Desktop/Nurudeen-DS/")

library(tidyverse)
library(skimr)
install.packages('skimr')

if(!require(pacman)) install.packages('pacman')
pacman::p_load(
  skimr,
  pillar,
  esquisse
  
)

help(esquisse)
?esquisse

ebola_sierra <- read_csv('data/ebola_sierra_leone - ebola_sierra_leone.csv.csv')

glimpse(ebola_sierra)
view(ebola_sierra)
skim(ebola_sierra)
head(ebola_sierra)
esquisse::esquisser(ebola_sierra$sex)

ggplot(ebola_sierra) +
  aes(x = sex) +
  geom_bar(fill = status) +
  theme_minimal()

ggplot(ebola_sierra) +
  aes(x = sex) +
  geom_bar(fill = "#112446") +
  theme_minimal()

