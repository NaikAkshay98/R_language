data<-data.frame(x1=1:6,
                 x2=c(1,2,3,4,1,1),
                 x3=c("f","a","d","w","t","e"))
data
library("dplyr")

arrange(data,x3)
#arrange(data,x2)
filter(data,x2==1)

mutate(data,x4=x1+x2)
#mutate(data,x5=x3+x2)

pull(data,x2)

rename(data,new_name=x3)

set.seed(765)
sample_n(data,4)
#sample_n(data,3)

select(data,c(x2,x3))
