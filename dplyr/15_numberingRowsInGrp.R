data<-data.frame(x1=1:10,
                group=c(rep("g1",3),
                        rep("g2",5),
                        rep("g3",2)))
data
data1<-data
data1$numbering<-ave(data1$x,
                     data1$group,
                     FUN=seq_along)
data1
library("dplyr")

data2<-data
data2<-data2%>%
  group_by(group)%>%
  mutate(numbering=row_number())
data2
