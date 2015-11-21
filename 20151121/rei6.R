source("rei5.R")

data(freeny)
freeny.y

lm_result <- lm(freeny.y~time(freeny.y))

summary(lm_result)
