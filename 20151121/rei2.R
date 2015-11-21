source("rei1.R")

url1 <- "https://raw.githubusercontent.com/Salinger/testset1/master/learning.csv"

learning_df <- read.csv(text=getURL(url1,ssl.verifypeer=FALSE,.encoding="UTF-8"))

head(learning_df)

postscript("results/2.eps")
plot( x = learning_df$b, y = learning_df$a, xlim = c(-5, 13), ylim = c(70, 109), pch = ifelse(learning_df$continued == 1, 1, 17))
dev.off()
