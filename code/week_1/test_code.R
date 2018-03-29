don <- read.table("./code/week_1/data/data_PCA_Fertility.csv", header=TRUE, sep=";", dec=".", row.names = 1)

library(FactoMineR)

res.test<-PCA(don, quali.sup = 7)
summary(res.test)
