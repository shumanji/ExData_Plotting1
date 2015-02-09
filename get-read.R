## get-read.R
## this script gets the data set and subsets it to the dates 2/1/2007 and 2/2/2007

if (!file.exists("EDA-project1")) {
        dir.create("EDA-project1")
        
}

if (!file.exists("EDA-project1/exdata-data-household_power_consumption.zip")) {
        fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(fileurl, destfile = "EDA-project1/exdata-data-household_power_consumption.zip")
        unzip("EDA-project1/exdata-data-household_power_consumption.zip", exdir = "EDA-project1", overwrite = TRUE)
        
}

newdata <- read.table("EDA-project1/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
newdata <- newdata[newdata$Date == "1/2/2007" | newdata$Date == "2/2/2007",]
