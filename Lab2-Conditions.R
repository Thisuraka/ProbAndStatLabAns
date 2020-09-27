#======================sequance=============================================
#from,to,increment 
a<-seq(2,10,2)
a        #[1]  2  4  6  8 10
a[3]     # [1] 6

#===================================samples=================================
sample(1:10)  # 6  8  9  5  3  2  1 10  4  7
sample(1:3)   #2 3 1
sample(1:5, size=3, replace=FALSE)     #5 1 2
sample(1:5, size=3, replace=TRUE)      # 2 3 2
sample(1:5, size=7, replace=TRUE)      # 5 4 5 5 1 2 2

sample(1:2, size=10,prob = c(1,3),replace=TRUE)   #2 2 2 2 2 2 2 2 1 2


#======================control statement===================================
#+++++++++++++IF ELSE+++++++++++++++

x<-1:10
y<-sample(x,size=1)    #generates a sample between 1:10
y

if(y<5){
  print("Tis less than 5")
}else if(y>5){
  print("Tis greater than 5")
}else{
  print("Tis equal to 5")
}


#+++++++++++++FOR LOOP++++++++++++++
for(i in 1:10){
  print(i)               #prints 1 to 10
}

students<-c("Ann","Bob","Joe","Go","Boe")
for(i in 2:4){
  print(students[i])    #prints students list from 2 to 4th [bob,joe,go]
}


#+++++++++++++WHILE LOOP++++++++++++++
j<-1
while(j<10){
  print(j)      #1,3,5,7,9
  j=j+2
}

















