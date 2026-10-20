data <- read.csv("household_power_consumption.txt",
                 sep = ";", na.strings = "?",
                 stringsAsFactors = FALSE)

data <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

png("plot1.png", width = 480, height = 480)
hist(data$Global_active_power,
     col = "red",
     main = "",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")
dev.off()
