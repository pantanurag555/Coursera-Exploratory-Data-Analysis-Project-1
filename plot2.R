library(lubridate)

data<-read.table("household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors = FALSE)
subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

datetime<-dmy_hms(paste(subdata$Date,subdata$Time))
gap<-as.numeric(subdata$Global_active_power)

png("plot2.png",height=480,width=480)

plot(datetime,gap,type="l",ylab="Global Active Power (kilowatts)",xlab="")

dev.off()