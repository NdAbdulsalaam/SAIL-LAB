setwd("C:/Users/Open User/Desktop/Nurudeen-DS/")

library('tidyverse')

covid_df <- read_csv('data/covid19_nigeria_states.csv')
head(covid_df)

covid_df1 <- read.csv('data/covid19_nigeria_states.csv')
head(covid_df1)

covid_df %>% summarise(
  mean_total <-  mean(total_confirmed),
  media_total <- median(total_confirmed),
  std_total <-  sd(total_confirmed)
)

head(covid_df) %>% summarise(
  mean_total <-  mean(total_confirmed),
  media_total <- median(total_confirmed),
  std_total <-  sd(total_confirmed)
)

ggplot(covid_df, aes(x = states)) +
  geom_bar(aes(y=total_confirmed), stat = "identity", fill="red", position = position_dodge(width = 0.9)) +
  geom_bar(aes(y=total_recoveries), stat = "identity", fill="green", position = position_dodge(width = 0.9)) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

covid_df %>% 
  filter(!(states == "Lagos"| states == "FCT" | states == "Kaduna")) %>% 
  ggplot(aes(x = states, y = total_confirmed)) +
  geom_bar(stat = "identity") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

covid_df1 %>% 
  filter(!(states == 'Lagos' | states == 'FCT' | states == 'Kaduna' )) %>% 
  ggplot(aes(x=states, y= total_confirmed))+
  geom_bar(stat = 'identity', aes(colour = total_death)) +
  theme(axis.text.x = element_text(angle = 60, hjust = 1))

covid_df1 %>% 
  filter(!(states == 'Lagos' | states == 'FCT' | states == 'Kaduna' )) %>% 
  ggplot(aes(x=states, y= total_confirmed, colour = total_death))+
  geom_bar(stat = 'identity') +
  theme(axis.text.x = element_text(angle = 60, hjust = 1))

covid_df1 %>% 
  filter(!(states == 'Lagos' | states == 'FCT' | states == 'Kaduna' )) %>% 
  ggplot(aes(x=states, y= total_death))+
  geom_bar(stat = 'identity') +
  theme(axis.text.x = element_text(angle = 60, hjust = 1))
