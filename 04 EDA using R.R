# Exploratory Data Analysis (EDA) using R

df <- read.csv('Data EDA Gold_Standard_2000.csv')


# Age analysis
mean(df$age)
median(df$age)


# Gender analysis
table(df$gender)
pie(table(df$gender))


# Make Analysis
table(df$Make)
pie(table(df$Make))
pie(table(df$Make), 
    col = c('red','blue','green','black','yellow','gray','lightblue','pink','darkblue'))


# Region analyse
table(df$region)
pie(table(df$region))


# Income group analysis
table(df$IncGrp)
barplot(table(df$IncGrp), col = 'blue')


# Create new column
df$CST <- (df$csat1 + df$csat2 + df$csat3 + df$csat4)/4
df$LOYALTY <- (df$loy1 + df$loy2 + df$loy3 + df$loy4)/4

plot(df$CST, df$LOYALTY)
cor(df$CST, df$LOYALTY)


# Make X CST
aggregate(df$CST, by=list(df$Make), FUN=mean)



