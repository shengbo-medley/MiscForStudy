source("rei31.R")

target.data <- as.data.frame(
    merge(as.data.table(variable.data.cast),
    as.data.table(target.cvr.data[,c("user.id", "cvr")]),
    by="user.id",
    all.x=T))
