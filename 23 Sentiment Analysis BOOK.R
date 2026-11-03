# Sentiment Analysis: Adventure of Holmes

library(tidyverse)
library(sentimentr)

text <- read_lines('Adventure of Homes.txt')
text

s1 <- get_sentences(text)
s1

st1 <- sentiment(s1)
st1

plot(st1)
