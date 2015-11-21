source("rei3.R")

library(ggplot2)
gp = ggplot(click.user.data[1:5000,], aes(x=no, y=click.num)) + geom_line() + geom_point() + xlab("user") + ylab("Clicks") + theme_bw()

ggsave("results/rei4.png", gp)
