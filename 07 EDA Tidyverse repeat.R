# EDA Tidyverse

df <- read.csv('superstore_dataset.csv', encoding = 'latin1')

library(tidyverse)
# Segment wise Sales
df |> 
  select(Segment, Sales) |> 
  group_by(Segment) |> 
  summarise(sws = sum(Sales))

# Market wise Quantity
df |> 
  select(Market, Quantity) |> 
  group_by(Market) |>
  summarise(mwq = sum(Quantity)) |> 
  arrange(-desc(mwq))

# CW: Country-wise Sales
df |> 
  select(Country, Sales) |> 
  group_by(Country) |> 
  summarise(cws = sum(Sales)) |> 
  arrange(-desc(cws)) |> 
  print(n=147)

# Separate India data for analysis
df_ind <- df |>
  filter(Country == 'India')

# India City-wise Quantity
df_ind |> 
  select(City, Quantity) |> 
  group_by(City) |> 
  summarise(icws=sum(Quantity)) |> 
  arrange(desc(icws)) |> 
  print(n=146)

# Top state in India by Sales value
df_ind |> 
  select(State, Sales) |> 
  group_by(State) |> 
  summarise(isws = sum(Sales)) |> 
  top_n(n=2)

# Market wise Segement wise Sales
df |> 
  select(Market, Segment, Sales) |> 
  group_by(Market, Segment) |> 
  summarise(mwsws=sum(Sales))

df |> 
  select(Market, Segment, Sales) |> 
  group_by(Market, Segment) |> 
  summarise(mwsws=sum(Sales)) |> 
  spread(Segment, mwsws)

  
