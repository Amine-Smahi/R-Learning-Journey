cars_dt = head(cars,30)
speed = c(19,19,20,20,20)
dist = c(190,186,210,220,218)

outliers = as.data.frame(cbind(speed,dist))

cars_2 = merge(cars_dt,outliers, all = T)
write.csv2(cars_2,"carsTemp.csv")
#plot(speed,dist)
x=par(mfrow=c(1,2))
 #plot(cars_dt$speed,cars_dt$dist,main = "sans outliers",xlab = "vitesse",ylab="distance",xlim = c(0,28),ylim = c(0,230))
#plot(cars_2$speed,cars_2$dist,main = "avec outliers",xlab = "vitesse",ylab="distance",xlim = c(0,28),ylim = c(0,230))
abline(lm(dist~speed,data=cars_dt),col="",lwd=4,lty=2)
summ1= summary(cars_dt$dist)
summ2= summary(cars_2$dist)
q1=quantile(cars_dt$dist,0.25)
q1
q2=quantile(cars_2$dist,0.75)
q2
x=IQR(cars_2$dist)

extrem=(q1 + 1.5 *IQR(cars_dt$dist))
extrem
extrem2=(q2 + 1.5 *IQR(cars_2$dist))
extrem2
numbSup = cars_2$dist[cars_2$dist>extrem2]
numLow = cars_dt$dist[cars_dt$dist<extrem]
plott=boxplot(cars_2$dist)
plot2=boxplot((cars_dt$dist),notch = TRUE, col = "red",horizontal = T)
length(numbSup)


xp = cars_2$dist[ - which(cars_2$dist %in% numbSup)] 