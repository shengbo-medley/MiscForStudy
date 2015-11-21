source("rei6.R")

target.click.user <- click.user.data %>% filter(cluster >= 2)

click.data <- click.data %>% filter(user.id %in% target.click.user$user.id)
