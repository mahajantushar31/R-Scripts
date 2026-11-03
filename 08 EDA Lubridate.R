# EDA using tidy verse Working with dates
library(tidyverse)

df <- read.csv('superstore_dataset.csv', encoding = 'latin1')

library(lubridate)
df$Order.Date <- dmy(df$Order.Date)

# Extract year from order date as a new column
df$order_year <- year(df$Order.Date)

# Year wise analysis
df |> 
  select(order_year, Sales) |> 
  group_by(order_year) |> 
  summarise(yws = sum(Sales))

# Extract month from order date as a new column
df$order_month <- month(df$Order.Date, label = TRUE)

# Month wise analysis
df |> 
  select(order_month, Sales) |> 
  group_by(order_month) |> 
  summarise(mws = sum(Sales))

# Year wise - Month wise Sales
df |> 
  select(order_year, order_month, Sales) |> 
  group_by(order_year, order_month) |> 
  summarise(ywmws = sum(Sales)) |> 
  spread(order_year, ywmws)
  
# Extract week day from order date
df$wkday <- wday(df$Order.Date, label = TRUE)

# Weekday wise Sales
df |> 
  select(wkday, Sales) |> 
  group_by(wkday) |> 
  summarise(wdws = sum(Sales))



  
  



