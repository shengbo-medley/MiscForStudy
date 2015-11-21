source("rei26.R")

click.cluster3.summary2 <- click.data.cast3 %>% group_by(cluster) %>% summarise(click.avg=mean(total)) %>% as.data.frame()

click.cluster3.summary2
