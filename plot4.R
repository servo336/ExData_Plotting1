## PLOT 4 by Servillano Poserio

## Set working directory path
setwd("~/workdiR/Course3-4/Exploratory Data Analysis/week1")
## Run data-loader script
source("data-loader.R")

## Define png file path
plot4Png <- paste(getwd(), "plot4.png", sep = "/")

## Check if png file exist
if(!file.exists(plot4Png)){
  ## Set PNG file parameters
  png(plot4Png, width = 480, height = 480)
  
  ## Render plots
  par(mfrow=c(2,2))
  
  # Global Active Power Plot
  plot(hpcData$DateTime, hpcData$Global_active_power, xlab="", pch=NA, 
       ylab="Global Active Power")
  lines(hpcData$DateTime, hpcData$Global_active_power)
  
  # Voltage Plot
  plot(hpcData$DateTime, hpcData$Voltage, pch=NA, xlab="datetime", ylab="Voltage")
  lines(hpcData$DateTime, hpcData$Voltage)
  
  # Sub Metering Plot
  plot(hpcData$DateTime, hpcData$Sub_metering_1, pch=NA, xlab="", ylab="Energy sub metering")
  lines(hpcData$DateTime, hpcData$Sub_metering_1)
  lines(hpcData$DateTime, hpcData$Sub_metering_2, col='red')
  lines(hpcData$DateTime, hpcData$Sub_metering_3, col='blue')
  legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty = c(1,1,1), col = c('black', 'red', 'blue'), bty = 'n')
  
  # Global Reactive Power Plot
  with(hpcData, plot(DateTime, Global_reactive_power, pch=NA, xlab='datetime'))
  with(hpcData, lines(DateTime, Global_reactive_power))
  
  dev.off()
  

  
}