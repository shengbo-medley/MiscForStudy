source("rei10.R")

library(ggplot2)
gp = ggplot(click.data.cast.cluster1.melt, aes(x=variable, y=value, col=as.factor(user.id), group=user.id)) + geom_line() + geom_point() + xlab("Campaign") + ylab("Click num") + scale_x_discrete(label="") + theme_bw() + theme(legend.position="noe")

ggsave("results/rei11.png", gp)
