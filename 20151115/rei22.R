source("rei21.R")

gp = ggplot(click.cluster2.summary2, aes(x=cluster, y=click.avg)) + geom_bar(stat="identity", fill="grey") + theme_bw()

ggsave("results/rei22.png", gp)