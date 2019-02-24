setwd("D:\Master\M1\ADSI\tp2")
dt1=read.csv2("D:/Master/M1/ADSI/tp2/smp1.csv",sep = ';')
str(dt1)
dt2 = dt1[1:20,]
s=summary(dt2)
colnames(dt2)[5]="Gravity"
x=range(dt2[,5])
ag = range(dt2$age,na.rm =T)
is.na(dt2$age)
c=dt2$age[!is.na(dt2$age)]
v=sum(is.na(dt2))
length(v)
w=which(is.na(dt2$age),arr.ind = TRUE)
w_all=which(is.na(dt2),arr.ind = TRUE)
dt2_new=complete.cases(dt2)
dt2_complet = dt2[complete.cases(dt2),]
som=sum(complete.cases(dt2))
d=dim(dt2_complet)
mean_age=mean(dt2$age,na.rm=T)
med_age=median(dt2$age,na.rm=T)
dt2$age[which(is.na(dt2$age))]=mean_age
