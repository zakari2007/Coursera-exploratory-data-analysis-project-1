d=scan("household_power_consumption.txt", what=character(),na.strings="?", skip=66637, nlines=2880)
data=data.frame(matrix(unlist(sapply(d,strsplit,";")),ncol=9,byrow=T),stringsAsFactors =F)
colnames(data)=c("Date","Time","Global_active_power","Global_reactive_power",
"Voltage","Global_intensity","Sub_metering_1","Sub_metering_2",
"Sub_metering_3")
p=strptime(paste(data[,1],data[,2]),format= "%d/%m/%Y %H:%M:%S")
data$DT=p
head(data)
png(file="plot2.png",width=480,height=480)
plot(data$DT,as.numeric(data$Global_active_power),type="l",ylab="Global active power (kilowatts)",xlab="")
dev.off()
