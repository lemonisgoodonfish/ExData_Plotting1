# load processData first and run df = go() before running this file an other plot files
png(filename="plot3.png",width=480,height=480)
plotColors <- c("black", "red", "blue")
lineLabels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
plot(df$DateTime,df$Sub_metering_1,type='l',ylab="Energy sub metering",xlab="",col=plotColors[1],lty=1)
lines(df$DateTime,df$Sub_metering_2,type='l',ylab="Energy sub metering",xlab="",col=plotColors[2],lty=1)
lines(df$DateTime,df$Sub_metering_3,type='l',ylab="Energy sub metering",xlab="",col=plotColors[3],lty=1)
legend("topright", lineLabels, cex=0.8, col=plotColors, lty=1, lwd=2, bty="l")
dev.off()