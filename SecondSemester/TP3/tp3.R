cars1=head(cars,30)
speed=c(19,19,20,20,20)
dist=c(190,186,210,220,218)
outlier=data.frame(speed,dist)
summary(cars1)
cars2=rbind(cars1,outlier)


quantile(cars1$dist,0.25)
quantile(cars1$dist,0.75)
q3=quantile(cars1$dist,0.75)

extsup=q3+1.5*IQR(cars1$dist)
extsup2=q3+1.5*IQR(cars2$dist)
  
dist2=cars2$dist[cars2$dist>extsup2]
dist1=cars2$dist[cars2$dist<extsup2]
  
boxplot(cars2)
