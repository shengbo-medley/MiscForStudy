source("rei5.R")

library(ggplot2)
gp = ggplot(click.user.data[1:5000,], aes(x=no, y=click.num, col=as.factor(cluster), shape = as.factor(cluster))) + geom_line() + geom_point() + xlab("user") + ylab("Clicks") + theme_bw() + theme(legend.position="none") + scale_color_brewer(palette="Paired")

ggsave("results/rei5.png", gp)
