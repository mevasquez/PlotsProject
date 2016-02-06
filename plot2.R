# set working directory (make sure you change this to whatever you directory might be)
setwd('~/Source Code/GitHub/Exploratory-Data-Analysis')

# make sure the plots folder exists and be careful with upper and lower case letters
if (!file.exists('plots')) {
  dir.create('plots')
}

# load data
source('scripts/get_and_clean_data.R')

# open device
png(filename='plots/plot2.png',width=480,height=480,units='px')

# plot data
plot(power.consumption$DateTime,power.consumption$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# close device
x<-dev.off()
