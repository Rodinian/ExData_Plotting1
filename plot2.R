names<-c("Date","Time","Global_active_power", "Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
data<-read.csv2("household_power_consumption.txt",nrows= 2880,skip = 66637 ,na.strings = "?",col.names = names,stringsAsFactors= FALSE)
data$Date_Time<-paste(data$Date,data$Time)
data$Date_Time<-strptime(data$Date_Time, "%d/%m/%Y %H:%M:%S")
par(mfrow = c(1, 1))

plot(x = data$Date_Time, y= data$Global_active_power,type = "l",ylab="Global Active Power (kilowatts)",xlab="")

dev.copy(png, file = "plot2.png")  ## Copy my plot to a PNG file
dev.off()