data<-data.frame(x1=1:5,
                 x2=c(1,2,2,1,2),
                 x3=c("B","C","E","A","D"))
data
library("dplyr")

arrange(data,x2)
arrange(data,x2,x3)
