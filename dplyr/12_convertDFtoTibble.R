my_data<-data.frame(x1=1:5,
                 x2=letters[1:5],
                 x3=5)
my_data

library("dplyr")

my_tbl<-as.tbl(my_data)
my_tbl

is.tbl(my_data)

is.tbl(my_tbl)
