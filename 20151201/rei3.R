source("rei2.R")
set.seed(123)
bank <- read.csv("bank-full.csv", sep=";")
sapply(bank, class)
bank.processed <- makefeature(bank)
N <- nrow(bank)
inds.tr <- sample(seq(N), as.integer(0.7 * N))
bank.train <- bank.processed[inds.tr,]
bank.test <- bank.processed[-inds.tr,]