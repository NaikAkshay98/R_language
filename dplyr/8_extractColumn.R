library("dplyr")
data<-data.frame(x1=1:5,
                 x2=letters[1:5],
                 x3=1)
data
data<-as_tibble(data)
data

x1<-data%>%pull(x1)
x1
