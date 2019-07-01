setwd('/home/amine-smahi/Documents/R/TP3')

library("FactoMineR")

# load dataset
data(decathlon)
# view
decathlon

#decathlon: dataset
#scale.unit: standardisation ou non des variables
#graph: plotted or not
#ncp: nbr of composants kept
res_pca = PCA(decathlon[,1:10], ncp = 2, scale.unit = TRUE, graph=TRUE)

res_pca
