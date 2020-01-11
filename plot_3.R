setwd("~/Documents/Coursera/Exploratory Data Analysis")

dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_n <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


datetime <- strptime(paste(data_n$Date, data_n$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data_n$Global_active_power)
sub_Metering_1 <- as.numeric(data_n$Sub_metering_1)
sub_Metering_2 <- as.numeric(data_n$Sub_metering_2)
sub_Metering_3 <- as.numeric(data_n$Sub_metering_3)

png("plot_3.png", width=480, height=480)

#plot_3
plot(datetime, sub_Metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, sub_Metering_2, type="l", col="red")
lines(datetime, sub_Metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()