## PLOT 1 by Servillano Poserio

## Set working directory path
setwd("~/workdiR/Course3-4/Exploratory Data Analysis/week1")
## Run data-loader script
#source("data-loader.R")

## Define png file path
plot1Png <- paste(getwd(), "plot1.png", sep = "/")

## Check if png file exist
if(!file.exists(plot1Png)){
  ## Set PNG file parameters
  png("plot1.png", width = 480, height = 480)
  ## Generate histogram
  hist(hpcData$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
  dev.off()
}