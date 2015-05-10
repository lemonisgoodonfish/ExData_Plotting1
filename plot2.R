# load processData first and run df = go() before running this file an other plot files
png(filename="plot2.png",width=480,height=480)
plot(df$DateTime,as.double(as.character(df$Global_active_power)),type='l',ylab="Global Active Power (Kilowatts)",xlab="")
dev.off()
