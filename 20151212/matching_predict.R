library(RCurl)
library(kernlab)

learning_df <- as.data.frame(fread("matching_data.csv"))
plot(x = learning_df$height, y = learning_df$weight, xlim = c(140, 175), ylim = c(35, 75), pch = ifelse(learning_df$matching == 1, 1, 17))

predict_df <- as.data.frame(fread("matching_predict_data.csv"))

classifier <- ksvm(matching ~., data = learning_df, type= "C-svc")
plot(classifier, data = learning_df, pch = ifelse(learning_df$matching == 1, 1, 17))

predict(classifier, predict_df)
