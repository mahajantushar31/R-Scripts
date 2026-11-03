# Sentiment Analysis PRESIDENTIAL DEBATE

library(readxl)
library(sentimentr)
df <- read_xlsx('presidential_debate.xlsx')

s1 <- get_sentences(df$dialogue)
st1 <- sentiment_by(s1,by = df$person)
st1
plot(st1)

st2 <- sentiment_by(s1, by=df$time)
st2
plot(st2)