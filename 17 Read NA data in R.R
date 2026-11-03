# Read data from Excel file

library(readxl)
df <- read_xlsx('df_na.xlsx')
mean(df$value, na.rm = TRUE)
