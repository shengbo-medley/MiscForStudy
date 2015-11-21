source("rei25.R")

gp = ggplot(click.data.cast.cluster3.melt, aes(x=variable, y=value, col=as.factor(user.id), group=user.id)) + geom_line() + geom_point() + xlab("Campaign") + ylab("Click ratio") + scale_x_discrete(label="") + facet_grid(cluster~.) + theme_bw() + theme(legend.position="noe")

ggsave("results/rei26.png", gp)
