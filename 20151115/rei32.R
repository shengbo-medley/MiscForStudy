source("rei31.R")

library(rpart)   # 決定木
library(rattle)  # きれいな決定木の描画

target.data[,-c(1,ncol(target.data))] <-
  apply(target.data[,-c(1,ncol(target.data))], 2, as.factor)

cvr.fit <- rpart(cvr~., data=target.data[,-1])
