data<-as.tbl(data.frame(x1=1:5,x2=2:6,x3=3:7))
data
library("dplyr")

data%>%
  rowwise()%>%
  mutate(row_sum=sum(x1,x2,x3))
