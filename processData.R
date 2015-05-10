go = function(){
  df = read.delim("../household_power_consumption.txt",sep=";")
  df$DateTime <- paste(as.character(df$Date),as.character(df$Time))
  df$DateTime <- strptime(df$DateTime,"%d/%m/%Y %H:%M:%S")
  df$Date <- as.Date(df$Date,"%d/%m/%Y")
  df$Sub_metering_1 <- as.numeric(df$Sub_metering_1)
  df$Sub_metering_2 <- as.numeric(df$Sub_metering_2)
  df$Sub_metering_3 <- as.numeric(df$Sub_metering_3)
  lowerBoundDateTime = strptime("01-02-2007 00:00:00","%d-%m-%Y %H:%M:%S")
  upperBoundDateTime = strptime("03-02-2007 00:00:00","%d-%m-%Y %H:%M:%S")
  workingData <- subset(df, DateTime > lowerBoundDateTime &  DateTime < upperBoundDateTime)
  return(workingData)
}