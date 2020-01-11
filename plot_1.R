setwd("~/Documents/Coursera/Exploratory Data Analysis")

dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_n <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(data_n$Global_active_power)

png("plot_1.png", width=480, height=480)

#plot_1
hist(globalActivePower, col="Red", main="Global Active Power", xlab="Global Active Power (kW)")

dev.off()

