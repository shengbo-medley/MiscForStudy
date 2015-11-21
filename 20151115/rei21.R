source("rei20.R")

click.cluster2.summary2 <- click.data.cast.cluster2 %>% group_by(cluster) %>% summarise(click.avg=mean(total)) %>% as.data.frame()

click.cluster2.summary2