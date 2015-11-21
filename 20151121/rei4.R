source("rei3.R")

# SVM で 学習
# kernel = "radial": RBF カーネル
# k( x_ i, x_ j) = exp((-| x_ i - x_ j |^ 2) / sigma ^ 2)

classifier <- ksvm(continued~.,data=learning_df, type="C-svc")# , kernel = "radial")

postscript("results/4.eps")
plot(classifier, data=learning_df)
dev.off()
