library(ggplot2)

rawData <- read.csv("CDC_Salmonella_Data.csv")
colnames(rawData)[1] <- "Year"

qplot(Year, Illnesses, data = rawData, facets = Month~.)
