data<-data.frame(x1=c(1,2,2,1),
                 x2=letters[1:4],
                 group=c("g1","g2","g3","g1"))
data

data[data$group=="g1",]

data[data$group!="g1",]

data[data$group%in%c("g1","g2"),]

subset(data,group=="g1")

library("dplyr")
filter(data,group!="g1")
