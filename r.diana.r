r.diana<-function(x, lab=""){
#print(paste(lab))
x.daisy<-daisy(x,stand=TRUE)
print(x.daisy)
x.diana<-diana(x,diss=FALSE,stand=TRUE)
print(x.diana)
x.diana.k2<-cutree(as.hclust(x.diana),k=2)
print(x.diana.k2)
x.diana.k3<-cutree(as.hclust(x.diana),k=3)
print(x.diana.k3)
x.diana.k4<-cutree(as.hclust(x.diana),k=4)
print(x.diana.k4)
jpeg(paste(lab,".tree.jpg",sep=""))
plot(x.diana,which.plots=2,main="dendrogram",xlab=paste(lab))
dev.off()
jpeg(paste(lab,".banner.jpg",sep=""))
plot(x.diana,which.plots=1,main="banner")
dev.off()
}