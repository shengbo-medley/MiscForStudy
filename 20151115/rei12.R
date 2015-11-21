source("rei11.R")
library(ggplot2)

click.cluster1.summary$cluster <- as.factor(click.cluster1.summary$cluster)

gp = ggplot(click.cluster1.summary, aes(x=variable, y=value, col=cluster, group=cluster)) + geom_line(lwd=1) + geom_point(size=4) + xlab("Campaign") + ylab("Click num") + scale_x_discrete(label="") + theme_bw() + theme(legend.position="top") + scale_color_brewer(palette="Paired")

ggsave("results/rei12.png", gp)

