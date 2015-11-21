source("rei9.R")

df["predict"] <- ts(
    predict(rf_result, df["time"]),
    start = c(1962, 2),
    frequency = 4
)

postscript("results/10.eps")
plot(df["freeny.y"], ylim = c(8.8, 9.8), xlim = c(1962, 1972))
par(new=T)
plot(df["predict"], lty=2, ylim = c(8.8, 9.8), xlim = c(1962, 1972))
dev.off()
