 setwd("C://Users/zz/Documents/GSICS/econometrics/COURSERA/explor data analysis")# set working dir
household_power_consumption <- read.csv("~/GSICS/econometrics/COURSERA/explor data analysis/household_power_consumption.txt", sep=";")#open in RView(household_power_consumption)#view
mypowerConsumption <- powerConsumption[as.character(powerConsumption$Date) %in% c("1/2/2007", "2/2/2007"),] #set 2 days februrary
mypowerConsumption$dateTime <- strptime(mypowerConsumption$dateTime, "%d/%m/%Y %H:%M:%S") #set time
attach(mypowerConsumption)
png("plot1.png", width=480, height=480, units="px")#characteristics png
hist(as.numeric(as.character(Global_active_power)), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") #plot1


