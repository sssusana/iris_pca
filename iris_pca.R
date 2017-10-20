#Install and Load Packages
install.packages(c("FactoMineR", "factoextra"))
library("FactoMineR")
library("factoextra")

data(decathlon2)
head(decathlon2)


#Subsetting dataset
decathlon2.active <- decathlon2[1:23, 1:10]
head(decathlon2.active[, 1:6], 4)

#Data standardization
#In principal component analysis, variables are often scaled (i.e. standardized).std 1 mean 0
#By default, the function PCA() [in FactoMineR], standardizes the data automatically during the PCA;

# PCA can be run as PCA(X, scale.unit = TRUE, ncp = 5, graph = TRUE)
#Where:
#X: a data frame.
#scale.unit: a logical value. If TRUE, the data are scaled to unit variance before the analysis. This standardization to the same scale avoids some variables to become dominant just because of their large measurement units. It makes variable comparable.
#ncp: number of dimensions kept in the final results.
#graph: a logical value. If TRUE a graph is displayed.
#test

