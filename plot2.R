 #readLines("household_power_consumption.txt",3)
"Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_#1;Sub_metering_2;Sub_metering_3"
#"16/12/2006;17:24:00;4.216;0.418;234.840;18.400;0.000;1.000;17.000"                        #"16/12/2006;17:25:00;5.360;0.436;233.630;23.000;0.000;1.000;16.000"           

source("read_data.R")

plot2 <- function(){

	curdata <- readdata()

	dates <- as.character(curdata$Date)

	times <- as.character(curdata$Time)

	curdata$date_time <- paste(dates,times)

	curdata$date_time<- as.POSIXlt(curdata$date_time,format = "%d/%m/%Y %H:%M:%S")

	png(file = "plot2.png",width =480,height = 480,bg="white")

	with(curdata,plot(date_time,as.numeric(Global_active_power)/1000,ylab="Global Acitive Power (killowatts)",xlab="",type="l"))

	dev.off()
}