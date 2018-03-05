
### Import data 
## Upload the dataset data_ExportWine.csv 
 wine <- read.table("data_PCA_ExpertWine.csv",header=TRUE, sep=";", dec=".", row.names=1)

 summary(wine)

### Loading FactoMineR
 library(FactoMineR)

### PCA with supplementary variables
 res <- PCA(wine,quali.sup=1,quanti.sup=29:30)

 summary(res, nbelements=Inf)  ## to print all the elements

### Bar chart of eigenvalues
 barplot(res$eig[,1],main="Eigenvalues",names.arg=1:nrow(res$eig))

## Drawing wines according to the label 
 plot(res,habillage="Label")



