data<-read.table("household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors = FALSE)
subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

gap<-as.numeric(subdata$Global_active_power)

png("plot1.png",height=480,width=480)

hist(gap,col="red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)")

dev.off()