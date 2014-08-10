## Have assumed the raw data household_power_consumption.txt is already present in current working directory
## Load the raw data household_power_consumption.txt file from current directory  
## 2+ million rows that require about 133MB in memory space
rawdata <- read.table("household_power_consumption.txt",sep=";",header=T,colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings="?")


## Extracting rows where dates are 01/02/2007 or 02/02/2007 
data <- rawdata[(rawdata$Date=="1/2/2007" | rawdata$Date=="2/2/2007"),]



## Convert column "Date" to Date class
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")



## Convert column "Date" to "POSIXlt" "POSIXt" class
data$Time <- strptime(data$Time, format = "%H:%M:%S")



## Merge 'Date' and 'Time' columns to determine the x-axis distribution in plot
data$DateTime <- paste(data$Date, data$Time, sep=" ") 


## PLOT 1 - Global Active Power
## Openning .png file to save the histogram, file 'plot1.png' at 480 x 480 pixel resolution
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power,breaks = 12,main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()  # Turn off device
