source("rei1.R")
makefeature <- function(x)
{ is.num <- sapply(x,class) == "integer"
x[,is.num] <- lapply(x[,is.num], scale)
x
}