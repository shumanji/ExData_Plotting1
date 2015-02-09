setwd("~GitHub/ExData_Plotting1")
if (!file.exists("plots")) {
        dir.create("plots")
}

source("get-read.R")

png(filename = "plots/plot4.png", width = 480, height = 480, units ="px")

par(mfrow = c(2, 2))

plot(newdata$Date, newdata$Global_active_power, ylab = "Global Active Power (kW)", xlab = "", type ="1")

plot(newdata$Date, newdata$Voltage, xlab = "Date", ylab = "Energy Sub Metering")
lines(newdata$Date, newdata$Sub_metering_2,col = "red")
lines(newdata$Date, newdata$Sub_metering_3,col = "blue")

plot(newdata$date, newdata$Global_reactive_power, xlab = "Date", ylab = "Global_reactive_power, type = "1)

dev.off()
