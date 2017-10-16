plot4 = function() {
  
  data = read.table("household_power_consumption.txt",header = TRUE, sep= ";")
  data$DateTime = paste(data$Date, data$Time)
  data$DateTime = strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")
  start = which(data$DateTime==strptime("2007-02-01", "%Y-%m-%d"))
  end = which(data$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))
  data2 = data[start:end,]
  
  plot(data2$DateTime, as.numeric(as.character(data2$Voltage)),type='l', 
       ylab="Voltage",xlab="datetime" )
  
  plot(data2$DateTime, as.numeric(as.character(data2$Global_reactive_power)),type='l', 
       ylab="Global_reactive_power",xlab="datetime" )
}