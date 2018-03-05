### Import data (data are imported from internet)
decathlon <- read.table("http://www.agrocampus-ouest.fr/math/RforStat/decathlon.csv", 
   header=TRUE, sep=";",dec=".", row.names=1, check.names=FALSE)
summary(decathlon)

### Loading FactoMineR
library(FactoMineR)

### Help for the PCA function
?PCA

### PCA with only active elements as active
res <- PCA(decathlon[,1:10])
summary(res)

### PCA with supplementary variables
res <- PCA(decathlon, quanti.sup=11:12, quali.sup=13)
summary(res, nbelements=Inf)

### Description of the dimensions
dimdesc(res)
dimdesc(res, proba=0.2)

### Drawing individuals according to the competition
plot(res, cex=0.8, invisible="quali", title="Individuals PCA graph")
plot(res, cex=0.8, habillage="Competition")

### Confidence ellipses around the categories
plotellipses(res)

### Graph for dimensions 3 and 4
plot(res, choix="ind", cex=0.8, habillage=13, title="Individuals PCA graph", 
     axes=3:4)
plot(res, choix="var", title="Variables PCA graph", axes=3:4)

### Selecting individuals
plot(res, cex=0.8, habillage=13, select="cos2 0.7")
plot(res, cex=0.8, habillage=13, select="contrib 5")
plot(res, cex=0.8, habillage=13, select=c("Clay","Karpov"))

### Selecting variables
plot(res, choix="var", select="contrib 5")

### Graph using several arguments
plot(res, cex=0.8, habillage=13, select="cos2 0.7", title="Decathlon",
  cex.main=1.1, cex.axis=0.9, shadow=TRUE, auto="y")

