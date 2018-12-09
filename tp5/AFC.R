library(FactoMineR)
library(xlsx)
media = read.csv2(file.choose(),header = TRUE, sep=',',quote = "\"")

calprof = function(x){x/sum(x)*100}
calprof(c(3,4,4))

profLign = apply(media[-1,-1],1,calprof)
 
afc = CA(media[,-1],ncp=2,graph = FALSE)
attributes(afc)

col1 = afc$eig[,1]
plot(col1,type = 'o',main = "Valeurs Propre")
