# Sentiment analysis using LLM

library(tidyverse)

df <- read.csv('train.csv', fileEncoding = "latin1")

library(ellmer)
Sys.setenv(GOGLE_API_KEY="AIzaSyA7MSAFfKlJMFxLbNCuD1w1NkTzhM9UMNM")

chat <- chat_google_gemini()

chat$chat("In my environment there is a dataframe df. In this file the column named text has user responses. 
          Use a suitable sentiment analysis r package and analyse sentiment of column text.
          Later, analyse theses sentiments by column Time of tweet, Age of user, and Country.
          Plot the graphs of sentiments as well. Use sentimentr library")

