require(FactoMineR)

decathlon <- read.table("./code/week_1/data/data_PCA_Decathlon.csv", header = TRUE, sep=";", dec=".", row.names = 1, check.names=FALSE)

res <- PCA(decathlon[,1:10])
summary(res)

res <- PCA(decathlon, quanti.sup = 11:12, quali.sup = 13)
summary(res, nbelements = Inf)

dimdesc(res)
dimdesc(res, proba = 0.2)

plot(res, cex = 0.8, invisible = 'quali', title = 'Individuals PCA graph')

plot(res, cex = 0.8, habillage = 'Competition')

plotellipses(res)

plot(res, choix = 'ind', cex = 0.8, habillage = 13, title = "Individuals PCA graph", axes = 3:4)
plot(res, choix = 'var', title = "Variables PCA Graph", axes = 3:4)

plot(res, cex = 0.8, habillage = 13, select="cos2 0.7")
plot(res, cex = 0.8, habillage = 13, select="contrib 5")
plot(res, cex = 0.8, habillage = 13, select=c("Clay", "Karpov"))

