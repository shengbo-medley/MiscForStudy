source("rei7.R")

# install.packages("randomForest")
library("randomForest")
# データの読み込み(Freenyの売上データ)
data(freeny)
df <- data.frame( "time" = time(freeny.y), "freeny.y" = freeny.y)
