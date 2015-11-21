source("rei6.R")

postscript("results/7.eps")
plot(freeny.y)
abline(lm_result, lty=2)

dev.off()
