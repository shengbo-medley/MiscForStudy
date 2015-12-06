source("rei7.R")
head(modelLookup())
packageVersion("caret")
length(unique(modelLookup()$model))