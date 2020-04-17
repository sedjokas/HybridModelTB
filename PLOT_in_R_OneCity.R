# COde R pour recuperer les plots des data recu de GAMA
library(readr)
library(dplyr)
options(scipen=999)

datasir<-read_csv(file = "~/MyGAMAPhD/sante4Dev/test/results/dataCity6n1.csv")
k<- range(0,17000)
plot(datasir[,c(1,2)], type="l", col="green", axes=T, ann=T, xlab="Time (Cycles) ", ylab="Number of S(t), I(t), Le(t) , Lf(t) , T(t) , K(t) , R1(t) and R2(t)", ylim=k, xlim= g_range)
lines(datasir[,c(1,3)], type="l", col="red")
lines(datasir[,c(1,4)], type="l", col="orange")
lines(datasir[,c(1,5)], type="l", col="yellow")
lines(datasir[,c(1,6)], type="l", col="gray")
lines(datasir[,c(1,7)], type="l", col="magenta")
lines(datasir[,c(1,8)], type="l", col="blue")
lines(datasir[,c(1,9)], type="l", col="#77B5FE")

box()
legend(320, 13500, c("S(t)", "I(t)", "Le(t)" , "Lf(t)" , "T(t)" , "K(t)" , "R1(t)", "R2(t)"), cex=0.8,
   col=c("green", "red", "orange", "yellow", "gray", "magenta", "blue", "#77B5FE"), lty=1);
