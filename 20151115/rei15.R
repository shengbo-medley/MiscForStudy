source("rei14.R")
library(ggplot2)

gp = ggplot(click.cluster1.summary2, aes(x=cluster, y=click.avg)) + geom_bar(stat="identity", fill="grey") + theme_bw()

ggsave("results/rei13.png", gp)
