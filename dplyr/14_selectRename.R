data<-data.frame(x1=1:5,
                x2=letters[1:5],
                x3=5)
data

library("dplyr")
select(data,c(x1,x3))

rename(data,qwt=x1)
