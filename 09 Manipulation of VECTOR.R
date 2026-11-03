# Get back to basics: Manipulating vectors

friends <- c('ajay', 'vijay', 'sanjay', 'shweta', 'ram')

friends[1]
friends[2]
friends[1:3]
friends[2:5]



age <- c(25, 56, 41, 23, 71, 12, 55, 42, 99, 10)

length(age)
age[5]
age[5:9]
age[age<50]
age[age>60]
age[age > 40 & age < 70]

mean(age)
median(age)
hist(age)
