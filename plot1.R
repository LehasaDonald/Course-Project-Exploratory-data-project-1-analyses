plot1 = function() {
  data = read.table("household_power_consumption.txt",header = TRUE, sep= ";")
  
  data$DateTime = paste(data$Date, data$Time)
  start = which(data$DateTime==strptime("2007-02-01", "%Y-%m-%d"))
  end = which(data$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))
  data2 = data[start:end,]
  
  hist(as.numeric(as.character(data2$Global_active_power)),
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)", col="red")
}
