plot2 = function() {
  
  data = read.table("household_power_consumption.txt",header = TRUE, sep= ";")
  data$DateTime = paste(data$Date, data$Time)
  
  plot(data2$DateTime, as.numeric(as.character(data2$Global_active_power)),
       type ='l',ylab="Global Active Power (Kilowatts)", xlab="")
}