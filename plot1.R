setwd("~GitHub/ExData_Plotting1")
if (!file.exists("plots")) {
        dir.create("plots")
}

source("get-read.R")

png(filename = "plots/plot1.png", width = 480, height = 480, units ="px")

hist(newdata$Global_active_power, main = "Global Active Power (kW)", col = "red")

dev.off()
