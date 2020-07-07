data<-data.frame(x2=c(1,2,2,1,2),
                 x3=c("B","C","E","A","D"))
data

library("dplyr")

set.seed(15151)
sample_n(data,3)
sample_frac(data,0.33)
