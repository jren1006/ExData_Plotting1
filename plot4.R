# Plot 4
# Setting the number of rows and cols of the plot
par(mfrow = c(2,2))
# Subplot1 
plot(Datetime,sub.consum$Global_active_power,type = 'l', ylab = 'Global Active Power(kilowatts)', xlab = '')
# Subplot2
plot(Datetime,sub.consum$Voltage,type = 'l', ylab = 'Voltage', xlab = 'datetime')
# Subplot3
plot(Datetime,sub.consum$Sub_metering_1,type = 'l', xlab = '', ylab = 'Energy Sub Metering')
lines(Datetime,sub.consum$Sub_metering_2,col = 'red')
lines(Datetime,sub.consum$Sub_metering_3,col = 'blue')
legend('topright',col = c('black','red','blue'), lty = 1,legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
       ,cex = 0.5)
# Subplot4
plot(Datetime, sub.consum$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.copy(png, file = "plot4.png")
dev.off()
