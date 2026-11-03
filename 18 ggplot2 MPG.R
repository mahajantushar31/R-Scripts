# Graphics in R using ggplot2 package

library(ggplot2)
df <- mpg

ggplot(df, aes(df$cty, df$hwy)) +
  geom_point()

ggplot(df, aes(df$cty, df$hwy, colour = df$drv)) + 
  geom_point()

ggplot(df, aes(cty, hwy, size = displ)) +
  geom_point()

ggplot(df, aes(df$cty, df$hwy, shape = df$drv, colour = df$drv)) +
  geom_point()

ggplot(df, aes(df$cty, df$hwy, size = df$displ, alpha = 0.05)) +
  geom_point()



