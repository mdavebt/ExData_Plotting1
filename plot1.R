 #readLines("household_power_consumption.txt",3)
"Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_#1;Sub_metering_2;Sub_metering_3"
#"16/12/2006;17:24:00;4.216;0.418;234.840;18.400;0.000;1.000;17.000"                        #"16/12/2006;17:25:00;5.360;0.436;233.630;23.000;0.000;1.000;16.000"           

source("read_data.R")

png(file = "plot1.png",width =480,height = 480,bg="white")

hist(as.numeric(readdata()$Global_active_power)/1000,freq = TRUE,breaks = 13,main = "Global Active Power",xlab = paste("Global Active Power ","(kilowatts)", sep= "" ),col="orange",xlim = c(0,6),bg="white")

dev.off()