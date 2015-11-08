## PLOT 3 by Servillano Poserio

## Set working directory path
setwd("~/workdiR/Course3-4/Exploratory Data Analysis/week1")
## Run data-loader script
source("data-loader.R")

## Define png file path
plot3Png <- paste(getwd(), "plot3.png", sep = "/")

## Check if png file exist
if(!file.exists(plot3Png)){
  ## Set PNG file parameters
  png(plot3Png, width = 480, height = 480)
  ## Render plots
  plot(hpcData$DateTime, hpcData$Sub_metering_1, pch=NA, xlab="", 
       ylab="Energy sub metering")
  lines(hpcData$DateTime, hpcData$Sub_metering_1)
  lines(hpcData$DateTime, hpcData$Sub_metering_2, col='red')
  lines(hpcData$DateTime, hpcData$Sub_metering_3, col='blue')
  legend('topright', 
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty = c(1,1,1),
         col = c('black', 'red', 'blue'))
  
}