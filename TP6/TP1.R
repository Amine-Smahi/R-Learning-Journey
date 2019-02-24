setwd("D:\Master\M1\ADSI")
datamoph=read.csv2("D:/Master/M1/ADSI/owl.clutch.size.csv",sep = ',')
data2 = read.csv2("D:/Master/M1/ADSI/owl.morphometrics.csv",sep = ',')
data3 = as.character(data2[,1])

#data3[6]="Great Grey Owl"
data2[,1]=data3
#data4 = merge(data2,datamoph,by.x="common.name",by.y="name")

data2$common.name[data2$common.name=="Great-Grey Owl"]="Great Grey Owl"

data6 = read.csv2("D:/Master/M1/ADSI/owl.clutch.size _V2.csv",sep = ',')
data7=merge(data6,data2,all=T)
s=summary(data7)
write.csv2(data7,"V2.csv")
x2=read.csv2("V2.csv",sep=';')  
