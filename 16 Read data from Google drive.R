# Read data from Google drive

link <- "https://docs.google.com/spreadsheets/d/e/2PACX-1vT3_F2CmQ8vF5E7KFPEIPg3q07Th3nBor83UtyFEPdZzr436OrUXtx5D44UjWK0Lq2yA9yTgZbW5jpU/pub?output=csv"

df <- read.csv(link)

mean(df$DailyRate)

mean(df$JobSatisfaction)
table(df$MaritalStatus)
