source("rei9.R")

library(reshape2)

click.data.cast.cluster1.melt <- melt(
    click.data.cast.cluster1, id.vars = c("user.id", "cluster"), meansure.vars = keys)

click.cluster1.summary <- click.data.cast.cluster1.melt %>% group_by(cluster, variable) %>% summarise(value = mean(value)) %>% as.data.frame()
