source("readDataset.R")
data <- readDataset()

par(mfrow=c(2,2))

# Global active power vs time
with(data, {
    plot(datetime, Global_active_power, type="n", xlab="", ylab="Global Active Power")
    lines(datetime, Global_active_power)
})

# Voltage vs time
with(data, {
    plot(datetime, Voltage, type="n")
    lines(datetime, Voltage)
})

# Energy sub metering vs time
with(data, {
    plot(datetime, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
    lines(datetime, Sub_metering_1, col = "black")
    lines(datetime, Sub_metering_2, col = "red")
    lines(datetime, Sub_metering_3, col = "blue")
    legend(
        "topright", 
        legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
        lty = c(1,1,1),
        col = c("black","red","blue")
    )
})

# Global reactive power vs time
with(data, {
    plot(datetime, Global_reactive_power, type="n")
    lines(datetime, Global_reactive_power)    
})

# save plot
dev.copy(png, "plot4.png")
dev.off()
