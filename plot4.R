data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
png("plot4.png", width=480, height=480)
par(mfrow=c(2,1))
plot(datetime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(datetime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")
dev.off()
