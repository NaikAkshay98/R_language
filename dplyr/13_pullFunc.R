my_data<-data.frame(x1=1:5,
                    x2=letters[1:5])
my_data

library("dplyr")
pull(my_data,x1)

pull(my_data,1)
pull(my_data,2)
