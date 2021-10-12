install.packages("robustbase")
library(robustbase)
data<-read.csv("D:\\DATA  SCIENCE\\MACHINE LEARNING\\robust regression\\hbk.csv")
data

plot(hbk)

#using ordinary leat square(OLS)
model<-lm(Y~.,data=hbk)
summary(model)
confint(model,level=0.95)

hbk.x<-data.matrix(hbk[,1:3])

library(MASS)
cat("measurements of location:")
cat("mean (X1=",mean(hbk[,1]))
cat("median(x1=",median(hbk[,1]))
cat("20% trimmed mean(X1)=",mean(hbk[,1],trim=0.2))
cat("covmcd location(X1)=",cov.mcd(hbk.x)$center[1])
cat("cov.rob location(x1)=",cov.rob(hbk.x)$center[1])

cat("measurements of scale:")
cat("StdDev(x1)=",sd(hbk[,1]))
cat("mad(x1)=",mad(hbk[,1]))#default constant=1.486
cat("0.7413*IQR(x1)=",0.7413*IQR(hbk[,1]))    
cat("cov.mcd scale(x1)=",sqrt(cov.mcd(hbk.x)$cov[1,1]))    
cat("cov.rob scale(x1)=",sqrt(cov.rob(hbk.x)$cov[1,1]))
    