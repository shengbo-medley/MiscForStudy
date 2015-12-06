source("rei5.R")
my.summary <- function(data, lev=NULL, model=NULL) {
conf <- table(data$pred, data$obs)
prec <- conf["yes", "yes"]/sum(conf["yes",])
rec <- conf["yes", "yes"]/sum(conf[,"yes"])
f.value <- 2 * prec * rec / (prec * rec)
acc <- sum(diag(conf))/ sum(conf)

out <- c(Precision=prec, Recall=rec, F=f.value, Accuracy=acc)
out
}