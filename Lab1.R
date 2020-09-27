objects()      #shows all objects created

a<-c(1,2,3,4,5)
a
class(a)  #numeric

b<-c(1,5,5,6,8,7)
b
class(b)  #numeric

x<-c("A","B","C","D")
x
class(x)  #character

#======================================================================
#converting vector to factor
Gender=c(0,1,0,1,1)   #vector type object
Gender                #0,1,0,1,1
Gender<-factor(Gender,c(0,1),c("Male","Female"))     #convertion to factor
Gender                #Male   Female Male   Female Female
                      #Levels: Male Female

#======================================================================
#Creating a list
a<-c(1,2,3)
b<-"Blue"
c<-21

Data<-list(a,b,c)
list(Data)
class(Data)      #list

#======================================================================

#Creating a matrix
#                values | No.of rows | No.of cols |by how vals are entered
matrix_1<-matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow = TRUE)
matrix_1
#     [,1] [,2]
#[1,]    1    2
#[2,]    3    4

#======================================================================
#Creating a data frame ----------creates a table
Height<-c(12,23,56,49)
weight<-c(23,45,46,59)

data_Set<-data.frame(Height,weight)
data_Set
class(data_Set)

#======================================================================
#installing a packages
installed.packages("ggplot2")

