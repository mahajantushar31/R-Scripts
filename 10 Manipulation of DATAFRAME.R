# Getting back to basics: Manipulation of dataframe

df <-read.csv('cdata.csv')
df

df[1,]
df[,1]
df[1,1]
df[5,5] <- 'mobile'

# Create new variable Amt
df$amt <- df$qty * df$price

#Sorting of data
df[order(df$amt),]

df[order(df$product),]

df[order(df$amt, decreasing = TRUE),]



