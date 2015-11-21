source("rei7.R")

click.data.campaign <- click.data %>% group_by(user.id, campaign.id) %>% summarise(click.num=length(click.at)) %>% as.data.frame()

click.data.cast <- as.data.frame(dcast.data.table(data = as.data.table(click.data.campaign), formula = user.id~campaign.id, value.var = "click.num", fun.aggregate = sum))

click.data.cast$total <- rowSums(click.data.cast[,-1])
head(click.data.cast, 2)
