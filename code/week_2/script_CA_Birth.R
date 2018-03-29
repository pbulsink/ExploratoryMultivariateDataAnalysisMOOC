# Import data
setwd("C:/Users/houee/")
Birth <- read.table("data_CA_birth.csv", header=TRUE,sep=";", row.names=1, 
                    check.names=FALSE)
summary(Birth)

# Loading FactoMineR
library(FactoMineR)

# Correspondence Analysis
res <- CA(Birth, row.sup=7:8, col.sup=9:10)
summary(res)          ## function summary.CA

plot(res, cex=0.7, title="Simultaneous representation")

dimdesc(res)

# Graphs with several selections for rows and/or columns
plot(res, invisible=c("row.sup","col.sup"), cex=0.7, shadow=TRUE, title="Active elements")
plot(res, shadow=TRUE, cex=0.7, selectRow="cos2 0.7", selectCol="cos2 0.7")
plot(res, shadow=TRUE, cex=0.7, selectRow="cos2 4", selectCol="cos2 3")
plot(res, shadow=TRUE, cex=0.7, selectRow="contrib 4", selectCol="contrib 3")
plot(res, shadow=TRUE, cex=0.7, selectRow=c("Mother -20"))

# Graphs with dimensions 1 and 3
plot(res, shadow=TRUE, cex=0.7, axes=c(1,3), title="Representation on dimensions 1-3")

# Clustering on the columns
res.hcpc <- HCPC(res, cluster.CA="columns")
