# For loop

friends <- c('abhinav', 'devika', 'nikhil', 'jerin', 'palash')

for (i in friends) {
  print(i)
}

for (i in friends) {
  print('Welcome to my home, dear ')
  print(i)
}

for (i in friends) {
  print(paste('Welcome',i))
}

for (k in friends) {
  print(toupper(k))
}

for (k in friends) {
  print(tolower(k))
}

for (friend in friends) {
  print(paste("I am happy to welcome you", friend))
}

