# Using LLM for R programming

library(ellmer)

# Activate Google Gemini API Key
Sys.setenv(GOOGLE_API_KEY="AIzaSyA7MSAFfKlJMFxLbNCuD1w1NkTzhM9UMNM")

chat <- chat_google_gemini()

library(ggplot2)
df <- mpg


chat$chat("There is a datset named df in my environment.
          Use ggplot2 to plot a scatter plot of cty (city average) goes on X-axis and
          hwy (Highway average) goes on Y-axis. 
          The main title should be labelled 'City avg vs Highway avg'.
          panel background should be light blue. Plot background should be dark blue.
          Subtitle should be 'Data analysis'.
          The size of scatter dots should be based on displ (displacement).
          Use alpha=0.3 to make transparant dots.
          Color the scatter dots based on fl (Fuel type).
          Put legend inside the plot")

ggplot(df, aes(x = cty, y = hwy, size = displ, color = fl)) +
  geom_point(alpha = 0.3) +
  labs(
    title = "City avg vs Highway avg",
    subtitle = "Data analysis",
    x = "cty",
    y = "hwy",
    size = "displ",
    color = "fl"
  ) +
  theme(
    # Backgrounds
    panel.background = element_rect(fill = "lightblue"),
    plot.background  = element_rect(fill = "darkblue"),
    
    # Text colors adjusted for dark background
    plot.title    = element_text(color = "white", face = "bold", size = 14),
    plot.subtitle = element_text(color = "white", size = 11),
    axis.title    = element_text(color = "white"),
    axis.text     = element_text(color = "white"),
    
    # Place legend inside the plot (top-right area)
    legend.position   = c(0.88, 0.45),
    legend.background = element_rect(fill = alpha("white", 0.6), color = 
                                       "gray50"), # semi-transparent box for readability
    legend.key        = element_rect(fill = "transparent")
  )


