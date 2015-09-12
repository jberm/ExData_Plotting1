source("readDataset.R")
data <- readDataset()

# draw plot
with(data, {
    plot(datetime, Global_active_power, type ="n", xlab = "", ylab = "Global Active Power (kilowatts)")
    lines(datetime, Global_active_power)
})

# save plot
dev.copy(png, "plot2.png")
dev.off()