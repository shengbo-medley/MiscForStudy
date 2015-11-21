source("rei2.R")

library(ggplot2)
gp = ggplot(click.user.data, aes(x=no, y=click.num)) + geom_line() + geom_point() + xlab("user") + ylab("Clicks") + theme_bw()

ggsave("results/rei3.png", gp)
