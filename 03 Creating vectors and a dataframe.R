# 03 Creating vectors and a dataframe

# Character vector
students <- c('pranav', 'supriya', 'tushar', 'abhay', 'arundhati')

# Numeric vector
marks <- c(89, 91, 78, 92, 89.5)

# Integer vector
prns <- seq(51,55)

# Factor vector
gender <- factor(c('male', 'female', 'male', 'male', 'female'))

# DATAFRAME
df <- data.frame(students, prns, gender, marks)

write.csv(df, 'df.csv')

