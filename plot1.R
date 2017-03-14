# Loading the data
# Before laoding the data, I use unix command line to grep those lines begining with 2/2/2007 or 1/2/2007
# The one line script is :
# grep "^[12]/2/2007" household_power_consumption.txt > subset.txt
# So the data I'm loading in R is the subset.txt

sub.consum = read.table('subset.txt',header = FALSE,sep = ';',col.names = c('Date',
                     'Time', 'Global_active_power', 'Global_reactive_power',
                     'Voltage', 'Global_intensity', 'Sub_metering_1', 'Sub_metering_2',   
                     'Sub_metering_3'), na.strings = '?')
Datetime = strptime(paste(sub.consum$Date, sub.consum$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#Plot 1
hist(sub.consum$Global_active_power,col = 'red', xlab = 'Global Active Power(kilowatts)',
     main = 'Global Active Power')
dev.copy(png, file = "plot1.png")
dev.off()