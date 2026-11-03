# Graphics using ggplot2

library(ggplot2)

df <- diamonds

ggplot(df, aes(carat, price)) +
  geom_point()

ggplot(df, aes(carat, price, colour = df$cut)) +
  geom_point()

ggplot(df, aes(carat, price, colour = cut)) +
  geom_point() +
  theme_bw()

