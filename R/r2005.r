r2005.daisy<-daisy(r2005,stand=TRUE)
print(r2005.daisy)
r2005.diana<-diana(r2005,diss=FALSE,stand=TRUE)
print(r2005.diana)
r2005.diana.k2<-cutree(as.hclust(r2005.diana),k=2)
print(r2005.diana.k2)
r2005.diana.k3<-cutree(as.hclust(r2005.diana),k=3)
print(r2005.diana.k3)
r2005.diana.k4<-cutree(as.hclust(r2005.diana),k=4)
print(r2005.diana.k4)
jpeg("r2005.tree.jpg")
plot(r2005.diana,which.plots=2,main="dendrogram",xlab="2005")
dev.off()
jpeg("r2005.banner.jpg")
plot(r2005.diana,which.plots=1,main="banner")
dev.off()