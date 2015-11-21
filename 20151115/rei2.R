source("rei1.R")
click.user.data <- click.data %>% group_by(user.id) %>% summarise(click.num=length(click.at)) %>% as.data.frame() %>% arrange(desc(click.num)) %>% mutate(no=1 :length(user.id))
head(click.user.data)
