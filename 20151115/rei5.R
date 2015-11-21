source("rei4.R")

library(ykmeans)

click.user.data <- ykmeans(click.user.data, "click.num", "click.num", 3)

table(click.user.data$cluster)
