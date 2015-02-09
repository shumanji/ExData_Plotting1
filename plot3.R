setwd("~GitHub/ExData_Plotting1")
if (!file.exists("plots")) {
        dir.create("plots")
}

source("get-read.R")

png(filename = "plots/plot3.png", width = 480, height = 480, units ="px")

plot(newdata$Date, newdata$Sub_metering_1, type ="1", col = "black", xlab ="", ylab = "Energy sub metering")
lines(newdata$Date, newdata$Sub_metering_2, col = "red")
lines(newdata$Date, newdata$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3", col = c("black", "red", "blue"), lty = "solid"))

dev.off()
