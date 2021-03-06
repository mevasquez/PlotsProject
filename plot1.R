# set working directory (make sure you change this to whatever you directory might be)
setwd('~/Source Code/GitHub/Exploratory-Data-Analysis')

# make sure the plots folder is there and be careful with upper case and lower case letters
if (!file.exists('plots')) {
  dir.create('plots')
}

# load data
source('scripts/get_and_clean_data.R')

# open device
png(filename='plots/plot1.png',width=480,height=480,units='px')

# plot data
hist(power.consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()
