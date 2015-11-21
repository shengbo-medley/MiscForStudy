source("rei32.R")

click.data.cast.cluster3 <- ykmeans(click.data.cast3.pc, pc.keys, "total", 6)

click.data.cast3$cluster <- click.data.cast.cluster3$cluster

click.data.cast.cluster3.melt <- melt(
    click.data.cast3,
    id.vars = c("user.id", "cluster"),
    measure.vars = keys)

click.cluster3.summary <- click.data.cast.cluster3.melt %>% group_by(cluster, variable) %>% summarise(value=mean(value)) %>% as.data.frame()
