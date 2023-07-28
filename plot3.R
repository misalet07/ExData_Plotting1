png(filename = "plot3.png", width = 480, height = 480,units = "px", bg = "transparent")

#Submetering
plot(DateTime, Sub_metering_1, type = "1", col ="black", xlab ="", ylab = "Energy sub metering")

#Other lines
lines(DateTime, Sub_metering_2, type = "1", col = "red")
lines(DateTime, Sub_metering_3, type = "1", col = "blue")

#Legend
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd = 1) 
     
dev.off()