# 05 EDA using R continue

df <- read.csv('Data EDA Gold_Standard_2000.csv')

# Analyse age
mean(df$age)
median((df$age))

hist(df$age)
hist(df$age, breaks = 15)
hist(df$age, breaks = 15, col = 'green')

# Analyse Gender and Make both
table(df$gender, df$Make)

barplot(table(df$gender, df$Make))

#IncGrp wise CSAT
df$CSAT <- (df$csat1 + df$csat2 + df$csat3 + df$csat4)/4
df$LOYALTY <- (df$loy1 + df$loy2 + df$loy3 + df$loy4)/4

aggregate(df$CSAT, list(df$Make), FUN=mean)
aggregate(df$CSAT, list(df$IncGrp), FUN=mean)


# Analyse CSAT
hist(df$CSAT)
hist(df$LOYALTY)
