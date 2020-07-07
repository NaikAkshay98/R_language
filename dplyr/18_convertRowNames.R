data<-data.frame(x1=LETTERS[1:5],
                x2=letters[1:5])
data

data1<-data
data1$row_names<-row.names(data1)
data1

library("dplyr")
data2<-data
data2<-tibble::rownames_to_column(data2,"row_names")
data2

