source("readDataset.R")
data <- readDataset()

# draw plot
with(data, { 
    plot(datetime, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
    lines(datetime, Sub_metering_1, col="black")
    lines(datetime, Sub_metering_2, col="red")
    lines(datetime, Sub_metering_3, col = "blue")
    legend(
        "topright", 
        legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
        lty = c(1,1,1),
        col = c("black","red","blue")
    )
})

# save plot
dev.copy(png, "plot3.png")
dev.off()