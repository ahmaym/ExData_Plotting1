data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(datetime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(datetime, data$Sub_metering_2, col="red")
lines(datetime, data$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=1, bty="n")
dev.off()
