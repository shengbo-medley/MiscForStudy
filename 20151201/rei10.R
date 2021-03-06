source("rei10.R")
pred <- predict(fit.svm, bank.test)
(conf.mat <- table(pred, bank.test$y))
(prec <- conf.mat["yes", "yes"]/sum(conf.mat["yes",]))
(rec <- conf.mat["yes", "yes"]/sum(conf.mat[,"yes"]))
(f.value <- 2 * prec * rec / (prec + rec))
(acc <- sum(diag(conf.mat)/sum(conf.mat)))