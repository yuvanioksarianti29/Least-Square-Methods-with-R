y<-matrix(c(50,40,52,46,65),5,1)
x<-matrix(c(1,1,1,1,1,1,5,5,10,20,1,1,2,2,3),5,3)
#transpose
xtranspose<-t(x)
xtranspose
#xtranspose kali x
xtranspose.x<-xtranspose%*%x
xtranspose.x

#xtranspose kali y
xtranspose.y<-xtranspose%*%y
xtranspose.y

#full rank
ginv(xtranspose.x)

#the least squares estimators are given by:
LeastSquare<-ginv(xtranspose.x)%*%xtranspose.y
LeastSquare



##estimate of variance subbab 331##
X<-matrix(c(1,1,1,1,1,1,2,3,4,5,6,7),6,2)
X
y<-matrix(c(1.9,2.7,4.2,4.8,4.8,5.1),6,1)
y
b<-matrix(c(0.97,0.65),2,1)
b

Xb<-X%*%b
Xb

#subtitusi dari definisi diperoleh
e<-y-Xb
e

etranspose<-t(e)

#sehingga
#s2=(etranspose x e)/n-p 
#n= baris data
#p= banyak variabel baik dependen dan independen

s2<-(etranspose%*%e)
EstimateVariance<-s2/4
EstimateVariance