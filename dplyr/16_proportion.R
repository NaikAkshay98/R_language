set.seed(9876)
data<-data.frame(x=sample(1:5,100,replace=TRUE),
                 y=sample(letters[1:3],100,replace=TRUE))
data

library("dplyr")

data%>%
  group_by(x,y)%>%
  summarise(n=n())%>%
  mutate(freq=n/sum(n))
