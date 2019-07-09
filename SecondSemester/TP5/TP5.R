library(rpart)
library(rpart.plot) 

tit= read.csv2("titanic.csv",sep = ';')

str(tit) 
summary(tit)

tit= na.omit(tit) 

tit$Survived=factor(tit$Survived, levels = c(1, 0), labels = c("YES", "NO")) 
 
tit$Pclass=factor(tit$Pclass, levels = c(1,2 ,3), labels = c("Upper", "Middle", "Lower"))

indice=sample(nrow(tit), 100)
training=tit[ indice, ] 
test=tit[-indice, ]

dim(training)
dim(test) 

prop.table(table(training$Survived)) 

ar=rpart(Survived~., data=training, method="class") 
rpart.plot(ar) 

pred=predict(ar, test, type="class") 
table_mat=table(test$Survived, pred) 
accuracy= sum(diag(table_mat)) / sum(table_mat)