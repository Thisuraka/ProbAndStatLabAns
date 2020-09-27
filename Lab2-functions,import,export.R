setwd("D:\\Documents\\SLIIT\\Pre reading material year 2 semester 2\\Prob & Stat\\02")

#===========================Functions===================================

#++++++eg1+++++
function_1<-function(a,b){
  x<-a+b
  x
}
function_1(5,7)

#++++++eg2+++++
h<-1
function_2<-function(r){
  h<-h+1
  r<-h+r
  print(r)
}
function_2(5)

#===========================Importing data===================================
#+++++++++++++++++students.txt file in lab 02 folder++++++++++++

#obj    command      filename     header       how seperared 
data_1<-read.table("D:/Documents/SLIIT/Pre reading material year 2 semester 2/Prob & Stat/02/Students.txt",header=TRUE,sep = ",")
data_1
#      Age Gender Marks
#    1  15      F    45
#    2  25      M    89

fix(data_1)     #shows in spreadsheet

#++++++++++++++++DATA2.csv file in lab 02 folder+++++++++++++++++
#obj     command    file      header
data_2<-read.csv("DATA2.csv",header=TRUE)
data_2

fix(data_2) 


#===========================Exporting data===================================
#+++++++++++++++++++++++++++txt file+++++++++++++++++++++++++++++++++++
height<-c(12,23,56)
weight<-c(100,150,80)
mydata<-data.frame(height,weight)     #creates table 
mydata

fix(mydata) 

#command   obj         txtfile name  seperator 
write.table(mydata,file="info.txt",sep="|")


#+++++++++++++++++++++++++++csv file+++++++++++++++++++++++++++++++++++
height<-c(12,23,56)
weight<-c(100,150,80)

#command   obj         csvfile name 
write.csv(mydata,file="info.csv")
