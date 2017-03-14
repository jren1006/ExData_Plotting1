# Plot 3
plot(Datetime,sub.consum$Sub_metering_1,type = 'l', xlab = '')
lines(Datetime,sub.consum$Sub_metering_2,col = 'red')
lines(Datetime,sub.consum$Sub_metering_3,col = 'blue')
legend('topright', col = c('black','red','blue'), lty = 1, legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
       ,cex = 0.6)
dev.copy(png, file = "plot3.png")
dev.off()