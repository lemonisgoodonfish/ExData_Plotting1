png(filename="plot4.png",width=480,height=480)
par(mfrow=c(2,2))

plot(df$DateTime,as.double(as.character(df$Global_active_power)),type='l',ylab="Global Active Power (Kilowatts)",xlab="")

plot(df$DateTime,as.double(as.character(df$Voltage)),type='l',ylab="Voltage",xlab="datetime")

plotColors <- c("black", "red", "blue")
lineLabels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
plot(df$DateTime,as.double(as.character(df$Sub_metering_1)),type='l',ylab="Energy sub metering",xlab="",col=plotColors[1],lty=1)
lines(df$DateTime,as.double(as.character(df$Sub_metering_2)),type='l',ylab="Energy sub metering",xlab="",col=plotColors[2],lty=1)
lines(df$DateTime,as.double(as.character(df$Sub_metering_3)),type='l',ylab="Energy sub metering",xlab="",col=plotColors[3],lty=1)
legend("topright", lineLabels, cex=0.8, col=plotColors, lty=1, lwd=2, bty="l")

plot(df$DateTime,as.double(as.character(df$Global_reactive_power)),type='l',ylab="Global_reactive_power",xlab="datetime")
dev.off()

