library("dplyr")
data1<-data.frame(ID=1:2,
                  x1=c("a1","a2"),
                  stringsAsFactors=FALSE)
data2<-data.frame(ID=2:3,
                  x1=c("b1","b2"),
                  stringsAsFactors=FALSE)
data1
data2

inner_join(data1,data2,by="ID")
left_join(data1,data2,by="ID")
right_join(data1,data2,by="ID")
full_join(data1,data2,by="ID")
semi_join(data1,data2,by="ID")
anti_join(data1,data2,by="ID")
