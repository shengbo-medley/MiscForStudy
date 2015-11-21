source("rei18.R")

click.cluster2.summary$cluster <- as.factor(click.cluster2.summary$cluster)
gp = ggplot(click.cluster2.summary, aes(x=variable, y=value, col=cluster, group=cluster, sahpe=cluster)) + geom_line() + geom_point(size=4) + scale_x_discrete(label="") + theme_bw() + theme(legend.position="top") + scale_color_brewer(palette="Paired")

ggsave("results/rei19.png", gp)