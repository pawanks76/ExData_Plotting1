data <- read.table('household_power_consumption.txt', sep=';', header = T, stringsAsFactors=FALSE, dec=".")
DataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png", width=480, height=480)

hist(as.numeric(DataSubset$Global_active_power), main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.off()
