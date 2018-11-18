setwd('/home/amine-smahi/Documents/R/TP2')

df = read.csv2('autos_acp.csv',header = TRUE, sep=';',quote = "\"")

colnames(df)

#Returns the type of the given object
class(df)

#Displays graphical representation of the dataframe by 2 columns (all columns included)
pairs(df)

#Choosing active columns only (if it is the result of a calculation between columns, we ignore it)
df_active = df[,2:7]

#Getting length of columns:
length(df[,1])
dim(df)
nrow(df)

#Correlation 
#(df * transpose de df)
#caracteristics: diagonal = 1, syemetrie: i,j = j,i 
df_cor = cor(df_active)

#Extract diagonal values
diag(df_cor)

#Calculating proper values & proper vectors
pr_vv = eigen(df_cor)

#Get only proper values
pr_vv$values

#Calculate principal component
composant= NULL;
j = 0
for (j in 1:ncol(df_active)) {
  cp = sqrt(pr_vv$values[j]) * pr_vv$vectors[j]
  composant = cbind(composant,cp)
}