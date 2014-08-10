## Have assumed the data household_power_consumption.txt is already present in current working directory
## Load the data household_power_consumption.txt file from current directory  
## 2+ million rows that require about 133MB in memory space
data <- read.table("household_power_consumption.txt",sep=";",header=T,colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings="?")


# Extract needed dataset
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

# Combine Date and Time
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), 
                          format="%d/%m/%Y %H:%M:%S")

# Open png device
png("plot2.png", width=480, height=480)

# Plot the graph
plot(data$DateTime, data$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power (kilowatts)")

# Turn off device
dev.off()
