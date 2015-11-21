source("rei2.R")

url2 <- "https://raw.githubusercontent.com/Salinger/testset1/master/try.csv"

test_df <- read.csv(text=getURL(url2, ssl.verifypeer=FALSE, .encoding="UTF-8"))

head(test_df)
