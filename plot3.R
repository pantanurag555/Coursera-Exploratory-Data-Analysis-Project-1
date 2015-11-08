library(lubridate)

data<-read.table("household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors = FALSE)
subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

datetime<-dmy_hms(paste(subdata$Date,subdata$Time))
sm1<-as.numeric(subdata$Sub_metering_1)
sm2<-as.numeric(subdata$Sub_metering_2)
sm3<-as.numeric(subdata$Sub_metering_3)

png("plot3.png",height=480,width=480)

plot(datetime,sm1,type="l",ylab="Energy sub metering",xlab="")
lines(datetime,sm2,col="red")
lines(datetime,sm3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))

dev.off()