setwd("~GitHub/ExData_Plotting1")
if (!file.exists("plots")) {
        dir.create("plots")
}

source("get-read.R")

png(filename = "plots/plot2.png", width = 480, height = 480, units ="px")

plot(newdata$Date, newdata$Global_active_power, ylab = "Global Active Power (kW)", xlab = "", type ="1")

dev.off()
