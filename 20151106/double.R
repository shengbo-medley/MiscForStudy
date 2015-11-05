data <- read.table("adult.data",sep=",")
X <- data[,c(1,13)]
mu = colMeans(X)
sigma = var(X)
multiple_mahalanobis <- function(x, y) {
   a <- matrix(c(x,y),1,2)
   return( sqrt( (a - mu) %*% solve(sigma) %*% t(a - mu) ) )
}

age = 27
working_time = 100
k = 2

print(pchisq(multiple_mahalanobis(age, working_time), k))