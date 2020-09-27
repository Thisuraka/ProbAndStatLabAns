setwd("D:\\Documents\\SLIIT\\Pre reading material year 2 semester 2\\Prob & Stat\\06")

#get data 
data1<-read.table("data6.txt", header=TRUE)
data1

#fix data
fix(data1)

#attach data
attach(data1)

#mean of nicotine
mean(Nicotine)

#stand diviation 
sd(Nicotine)

#variance
var(Nicotine)

#sample of size 5
samp1<-sample(Nicotine,5,replace = TRUE)
samp1

#Get 30 random samples of size 5, with replacement and calculate sample mean and sample
#variance for each sample
samples<-c()
for(i in 1:30){
  s<-sample(Nicotine,5, replace = TRUE)
  samples<-cbind(samples,s)    #cbind = Combine R Objects by Rows or Columns
  new<-c(new,paste('S',i))
}
samples


#rename colnames
colnames(samples)<-new
samples

#sample mean and sample variance for each sample.
s.means<-colMeans(samples)
s.means

s.vars <- apply(samples,2,var)
s.vars


#Calculate mean and variance of the Sample Means.
mean(s.means)
var(s.means)











