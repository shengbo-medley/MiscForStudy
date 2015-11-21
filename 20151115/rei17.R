source("rei16.R")

click.data.cast.cluster2.melt <- melt(click.data.cast.cluster2, id.vars = c("user.id", "cluster"), meansure.vars = keys)

click.cluster2.summary <- click.data.cast.cluster2.melt %>% group_by(cluster, variable) %>% summarise(value=mean(value)) %>% as.data.frame()
