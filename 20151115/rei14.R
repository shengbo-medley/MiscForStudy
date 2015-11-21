source("rei13.R")
click.cluster1.summary2 <- click.data.cast.cluster1 %>% group_by(cluster) %>% summarise(click.avg=mean(total)) %>% as.data.frame()
