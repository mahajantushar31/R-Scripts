# Graphic

library(ggplot2)
df <- mpg

ggplot(df, aes(cty, hwy, colour = drv)) + 
  geom_point() +
  theme_classic()+
  labs(title = "City vs Highway avg", 
       subtitle = "Scatter plot analysis") +
  xlab(label = "City milage") +
  ylab(label = "Highway milege")


ggplot(df, aes(cty, hwy, colour = drv)) + 
  geom_point() +
  labs(title = "City vs Highway avg", 
       subtitle = "Scatter plot analysis") +
  xlab(label = "City milage") +
  ylab(label = "Highway milege") +
  theme(panel.background = element_rect(fill = 'lightblue'))
  

ggplot(df, aes(cty, hwy, colour = drv, size = displ)) + 
  geom_point(alpha = 0.3) +
  labs(title = "City vs Highway avg", 
       subtitle = "Scatter plot analysis") +
  xlab(label = "City milage") +
  ylab(label = "Highway milege") +
  theme(panel.background = element_rect(fill = 'lightblue'),
        panel.border = element_rect(color = 'red'),
        plot.background = element_rect(fill = 'yellow'),
        axis.title = element_text(colour = 'blue'))


