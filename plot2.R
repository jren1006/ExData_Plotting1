# Plot2
plot(Datetime,sub.consum$Global_active_power,type ='l',
     xlab = '', ylab = 'Global Active Power(kilowatts)')
dev.copy(png, file = "plot2.png")
dev.off()