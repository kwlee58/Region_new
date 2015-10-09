r1975.2.daisy<-daisy(r1975[,-3],stand=TRUE)
print(r1975.2.daisy)
r1975.diana.2<-diana(r1975[,-3],diss=FALSE,stand=TRUE)
print(r1975.diana.2)
r1975.diana.2.k2<-cutree(as.hclust(r1975.diana.2),k=2)
print(r1975.diana.2.k2)
r1975.diana.2.k3<-cutree(as.hclust(r1975.diana.2),k=3)
print(r1975.diana.2.k3)
r1975.diana.2.k4<-cutree(as.hclust(r1975.diana.2),k=4)
print(r1975.diana.2.k4)
jpeg("r1975.2.tree.jpg")
plot(r1975.diana.2,which.plots=2,main="dendrogram",xlab="1975")
dev.off()
jpeg("r1975.2.banner.jpg")
plot(r1975.diana.2,which.plots=1,main="banner")
dev.off()
                                                                 
