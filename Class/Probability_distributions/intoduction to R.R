# import tidyverse
library(tidyverse)

covid <- read.csv("C:/Users/Open User/Desktop/Muideen_SAIL/covid19_nigeria_states.csv")

head(covid)

glimpse(covid)

#calculate the mean median of total_confirmed cases
covid %>%
  summarise(mean = mean(total_confirmed), median = median(total_confirmed))


# aesthetic mapping is the aes of x and y axis of the mapping 
# geom_bar is they type of geometric obe=ject to be add to the plot here as bar chat
# theme modifies apperance of x-axis to rotate by 90 degrees and horizontal justification set to 1
ggplot(covid, aes(x = states, y= total_confirmed)) +
  geom_bar(stat = "identity") + 
  theme(axis.test.x = element_text(angle = 90, hjust = 1))


# Most convinent Summarisation plot

ggplot(covid, aes(x = states, y = total_confirmed)) +
  geom_boxplot(outlier.color = "red", outlier.shape = "8", outlier.size = 4)

# Explaining outliers and distribution ahead by isolating top 3

covid_2 <- covid %>%
  filter(!(states == "Lagos" | states == "FCT" | states == "Kaduna"))

ggplot(covid_2, aes(x = states, y = total_confirmed)) + 
  geom_bar(stat = "identity") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

ggplot(covid_2, aes(x = states, y = total_confirmed)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 8, outlier.size = 4)

