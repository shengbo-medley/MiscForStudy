source("rei8.R")
library(ykmeans)

click.data.cast1 <- click.data.cast

keys <- names(click.data.cast1)[-c(1, ncol(click.data.cast1))]

click.data.cast.cluster1 <- ykmeans(click.data.cast1, keys, "total", 3:6)

table(click.data.cast.cluster1$cluster)
