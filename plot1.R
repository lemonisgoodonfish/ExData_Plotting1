# load processData first and run df = go() before running this file an other plot files
png(filename="plot1.png",width=480,height=480)
hist(as.double(as.character(df$Global_active_power)),main="Global active power",xlab="Global Active Power (kilowatts)",col = c("red"))
dev.off()
