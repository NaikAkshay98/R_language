library("dplyr")

x<- -3:3
x

if_else(x>=0,"pos","neg")

x_NA<-c(-3:3,NA)
x_NA

#if_else(x_NA>=0,"pos","neg")
if_else(x_NA>=0,"pos","neg","idk")
