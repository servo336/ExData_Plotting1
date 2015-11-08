## DATA LOADER by Servo Poserio

## Set working directory path
setwd("~/workdiR/Course3-4/Exploratory Data Analysis/week1")

## Checkf if data folder exist otherwise create it if does not exist
if(!file.exists("data")){
  dir.create("data")
}

## Download file

## Define download URL
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

## Define target path destination
desfile <- paste(getwd(),"data/household_power_consumption.zip",sep="/")

## Check if already present, download otherwise
if(!file.exists(desfile)){
  download.file(fileUrl, desfile, mode="wb")
}

## Define data directory path
dataDir <- paste(getwd(),"data",sep="/");

## Decompress file (unzip)
decompFile <- paste(getwd(), "/data/household_power_consumption.txt", sep = "")

## Check file if exist
if(!file.exists(decompFile)){
  unzip(desfile, list = FALSE, overwrite = FALSE, exdir = dataDir)
}

if(file.exists(decompFile)){

    ## Parse data and load it to a table variable
    hpcData <- read.table(decompFile, sep=';', header=T, 
                       colClasses = c('character', 'character', 'numeric',
                                      'numeric', 'numeric', 'numeric',
                                      'numeric', 'numeric', 'numeric'),
                       na.strings='?')
    hpcData$DateTime <- strptime(paste(hpcData$Date, hpcData$Time), 
                              "%d/%m/%Y %H:%M:%S")
    hpcData <- subset(hpcData, as.Date(DateTime) >= as.Date("2007-02-01") & 
                     as.Date(DateTime) <= as.Date("2007-02-02"))
}
  