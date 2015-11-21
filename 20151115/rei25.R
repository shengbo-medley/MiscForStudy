source("rei24.R")

click.cluster3.summary$cluster <- as.factor(click.cluster3.summary$cluster)
gp = ggplot(click.cluster3.summary, aes(x=variable, y=value, col=cluster, group=cluster, shape)) + geom_line() + geom_point(size=4) + scale_x_discrete(label="") + theme_bw() + theme(legend.position="top") + scale_color_brewer(palette="Paired")

ggsave("results/rei25.png", gp)
