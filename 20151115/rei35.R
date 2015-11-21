source("rei32.R")

click.cluster3.summary$cluster <- as.factor(click.cluster3.summary$cluster)

gp = ggplot(click.cluster3.summary,
       aes(x=variable, y=value, col=cluster, group=cluster, shape=cluster)) +
    geom_line() +
    geom_point(size=4) +
    theme_bw() +
    theme(legend.position="top") +
    scale_color_brewer(palette="Paired")

ggsave("results/rei35.png", gp)
