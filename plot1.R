source("readDataset.R")
data <- readDataset()

# draw plot
with(data, {
    hist(
        Global_active_power,  
        xlab = "Global Active Power (kilowatts)",  
        col = "red",  
        main = "Global Active Power"
    )
})

# save plot
dev.copy(png, "plot1.png")
dev.off()
