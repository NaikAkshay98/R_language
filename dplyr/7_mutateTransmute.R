data<-data.frame(x1=1:5,x2=5:9)
data

library("dplyr")

mutate(data,x3=x1+x2)
transmute(data,x3=x1+x2)
