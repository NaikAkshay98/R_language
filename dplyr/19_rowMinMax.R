data<-data.frame(x=1:10,
                 group=c(rep("A",3),
                         rep("B",5),
                         rep("C",2)))
data
library("dplyr")
data%>%group_by(group)%>%top_n(1,x)
#data%>%group_by(group)%>%top_n(2,x)
