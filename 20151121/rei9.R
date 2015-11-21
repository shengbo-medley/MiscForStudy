source("rei8.R")

rf_result <- randomForest(freeny.y~ ., df, mtry=1, ntree = 500, type="regression")
print(rf_result)

postscript("results/9.eps")
plot(rf_result)

dev.off()
