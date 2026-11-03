# Sentiment Analysis

df <- read.csv('sentiment_analysis.csv')

library(sentimentr)
s1 <- get_sentences(df$text)
s1

st1 <- sentiment_by(s1, by=df$Year)
st1

plot(st1)

st2 <- sentiment_by(s1, by=df$Platform)
st2
plot(st2)
