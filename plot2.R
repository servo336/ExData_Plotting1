## PLOT 2 by Servillano Poserio

## Set working directory path
setwd("~/workdiR/Course3-4/Exploratory Data Analysis/week1")
## Run data-loader script
source("data-loader.R")

## Define png file path
plot2Png <- paste(getwd(), "plot2.png", sep = "/")

## Check if png file exist
if(!file.exists(plot2Png)){
  ## Set PNG file parameters
  png(plot2Png, width = 480, height = 480)
  ## Render plots
  plot(hpcData$DateTime, hpcData$Global_active_power, pch=NA, xlab="", 
       ylab="Global Active Power (kilowatts)")
  lines(hpcData$DateTime, hpcData$Global_active_power)
  dev.off()
}