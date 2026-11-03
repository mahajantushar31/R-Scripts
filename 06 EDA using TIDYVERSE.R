# EDA using Tidyverse package

df <- read.csv('superstore_dataset.csv', encoding = 'latin1')

library(tidyverse)

# Analyse Category X Sales
df %>% 
  select(Category, Sales) %>% 
  group_by(Category) %>% 
  summarise(cws = sum(Sales))


# Analyse Country-wise Profits
df %>% 
  select(Country, Profit) %>% 
  group_by(Country) %>% 
  summarise(ctws = sum(Profit)) %>% 
  arrange(desc(ctws))

# Analyse Market-wise Quantities
df %>% 
  select(Market, Quantity) %>% 
  group_by(Market) %>% 
  summarise(mwq = sum(Quantity)) %>% 
  arrange(-desc(mwq))

aggregate(df$Quantity, list(df$Market), FUN=sum)


# Analyse Sales of top 10 customers
df %>% 
  select(Customer.Name, Sales) %>% 
  group_by(Customer.Name) %>%
  summarise(cuws = sum(Sales)) %>% 
  arrange(-desc(cuws))


df %>% 
  select(Customer.Name, Sales) %>% 
  group_by(Customer.Name) %>%
  summarise(cuws = sum(Sales)) %>% 
  arrange(-desc(cuws)) %>% 
  top_n(n = 10)


df %>% 
  select(Customer.Name, Sales) %>% 
  group_by(Customer.Name) %>%
  summarise(cuws = sum(Sales)) %>% 
  arrange(-desc(cuws)) %>% 
  print(n=2000)

df %>%
  select(Customer.Name) %>% 
  group_by(Customer.Name) %>% 
  tally()

df %>% 
  distinct(Customer.Name)

df %>% 
  select(Customer.Name, Sales) %>% 
  group_by(Customer.Name) %>%
  summarise(cuws = sum(Sales)) %>% 
  arrange(-desc(cuws)) %>% 
  print(n=2000) %>% 
  write.csv('mydf.csv')



