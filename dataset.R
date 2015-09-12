
# get data
if(!file.exists("household_power_consumption.txt")) {
    download.file(
        "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
        method = "curl",
        destfile = "household_power_consumption.zip"
    )
    unzip("household_power_consumption.zip")
    file.remove("household_power_consumption.zip")
}

# clean data
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
data$datetime <- strptime(paste(data$Date, data$Time, sep = " "), format="%d/%m/%Y %H:%M:%S", tz = "UTC")

start <- strptime("2007-02-01 00:00:00", format = "%Y-%m-%d %H:%M:%S", tz = "UTC")
end <- strptime("2007-02-03 00:00:00", format = "%Y-%m-%d %H:%M:%S", tz = "UTC")
dataset <- subset(data, datetime >= start & datetime < end)