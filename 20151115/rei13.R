source("rei12.R")
library(ggplot2)

gp = ggplot(click.data.cast.cluster1.melt, aes(x=variable, y=value, col=as.factor(user.id), group=user.id)) + geom_line() + geom_point() + xlab("Campaign") + ylab("Click num") + scale_x_discrete(label="") + facet_grid(cluster~.) + theme_bw() + theme(legend.position="noe")

ggsave("results/rei13.png", gp)
