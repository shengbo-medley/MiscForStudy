library(data.table)
library(randomForest)

hw.data <- as.data.frame(fread("hw_data.csv"))
hw.predict <- as.data.frame(fread("predict_data.csv"))
df <- data.frame ("weight" = hw.data$weight, "height" = hw.data$height)
rf_result <- randomForest(height~., data = df, mtry = 1, ntree = 500, type = "regression")

predict(rf_result, hw.predict)
library(data.table)
library(randomForest)
