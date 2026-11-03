# Sentiment Analysis

text1 <- "Pune is a peaceful city."

library(sentimentr)
s1 <- get_sentences(text1)

st1 <- sentiment(s1)
st1


text2 <- "But, Pune traffic is horrible. It is waste of time and energy."
s2 <- get_sentences(text2)
st2 <- sentiment(s2)
st2

text3 <- "But, Pune traffic is horrible It is waste of time and energy."
s3 <- get_sentences(text3)
st3 <- sentiment(s3)
st3


text4 <- "The weather at Pune is good. Sometimes it is worst."
s4 <- get_sentences(text4)
st4 <- sentiment(s4)
st4

