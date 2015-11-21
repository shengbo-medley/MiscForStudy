source("rei27.R")

gp = ggplot(click.cluster3.summary2, aes(x=cluster, y=click.avg)) + geom_bar(stat="identity", fill="grey") + theme_bw()

ggsave("results/rei28.png", gp)
