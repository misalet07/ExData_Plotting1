library('tidyverse')
my_data = read_tsv('name.dat')
head(my_data)
install.packages("tidyverse")
library(tidyverse)

#Start Coding Exercise

my_data = read_tsv('household_power_consumption.txt')
data1 <- read.table('household_power_consumption.txt', header = TRUE, sep =";", colClasses = c("character", "character", rep("numeric",7)), na ="?") 
summary(data1)
dim(data1)
attach(data1)

#Will create a subset for this

subset <- Date == "1/2/2007" | Date == "2/2/2007"
new <- data1[subset, ]
attach(new)
convert <- paste(Date, Time)
new$DateTime <- strptime (convert, "%d%m%Y %H:%M:%S")
rownames(new) <- 1:nrow(new)
dim(new)
attach(new)