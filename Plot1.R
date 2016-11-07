#####################################################################

# Peer-graded Assignment: Exploratory Data Analysis

# This assignment uses data from the UC Irvine Machine Learning Repository, in particular the "Individual household electric power consumption Data Set".
# The data can be obtained from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# This plot1.R script will perform the following steps: 
# 1. Set up the necessary working directory.
# 2. Getting the data
# 3. Creating the desired plot with the data.


#####################################################################

# Set up the necessary working directory.
    rm(list=ls())
    setwd('c:/Users/zuraidah/Desktop/Coursera/')
  
#####################################################################

# Getting the data and read the data into table called 'hpc'.
    fileURL <-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileURL, destfile="./course4wk1assignmentdata.zip")
    unzip(zipfile="./course4wk1assignmentdata.zip")
    hpc <- read.table(text = grep("^[1,2]/2/2007", readLines("household_power_consumption.txt"), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

#####################################################################

# Plotting the data and create a file called 'Plot1.png' with the required 480x480 pixel, labels and coloring.
    
    png(filename='Plot1.png', width=480, height=480, units='px')
    hist(hpc$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
    dev.off()

####################################################################