setwd("D:\\Documents\\SLIIT\\Pre reading material year 2 semester 2\\Prob & Stat\\04")

#Read data from file
data3 <- read.table("DATA 4.txt",header = TRUE, sep = " ")

#display
data3
fix(data3)
attach(data3)

#mean of x1
mean(X1)

#boxplot for x1
boxplot(X1, main = "Boxplot for Team attendance", horizontal = TRUE)

#histogram for X1
hist(X1, main = "Histogramfor attendance")

#Stem and leaf for X1
stem(X1)

#median X1
median(X1)

#standard deviation of X1
sd(X1)

#Quantile of X1
quantile(X1)
#    0%     25%     50%     75%    100% 
#0.91400 1.72450 2.45200 2.94425 3.78900 

#Quantile of X1
quantile(X1)[2]
#25% 
#1.7245

#The Interquartile Range
IQR(X1)
#1.21975

get.mode(X3)










