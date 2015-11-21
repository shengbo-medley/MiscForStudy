source("rei29.R")

cv.data <- as.data.frame(fread("cv_data_sample.csv"))
target.cv.data <- cv.data %>% group_by(user.id) %>% summarise(cv.num=length(cv.at)) %>% as.data.frame()

target.cvr.data <- as.data.frame(
    merge(as.data.table(target.click.user[,c("user.id","click.num")]),
          as.data.table(target.cv.data),
          by="user.id",
          all.x=T))

target.cvr.data[is.na(target.cvr.data)] <- 0
target.cvr.data$cvr <- target.cvr.data$cv.num /target.cvr.data$click.num
