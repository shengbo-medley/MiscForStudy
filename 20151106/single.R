data <- read.table("adult.data",sep=",")
X <- data[,13]
mu = mean(X)
sigma = var(X)
sd = sd(X)
single_mahalanobis <- function(x) {
   return( sqrt((x - mu)^2 / sigma) )
}

working_time = 100
k = 1

print(pchisq(single_mahalanobis(working_time), k))