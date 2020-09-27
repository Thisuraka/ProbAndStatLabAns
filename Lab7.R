setwd("D:\\Documents\\SLIIT\\Pre reading material year 2 semester 2\\Prob & Stat\\07")

#=================================read data=================================
data<-read.table("Forest.txt",header=TRUE, sep=",")
data

#===============================fix and attach===============================
fix(data)
attach

#===========================get summary of data==============================
summary(data) #shows min ,max ,1st Q , 3rd Q ,Median ,Mean

str(data) #shows obj types and its data

#there are 517 observations


#========================max and min wind speeds============================
min(wind)
max(wind)

#========================Five No. summary of temp=========================
summary(temp)  #shows min ,max ,1st Q , 3rd Q ,Median ,Mean    of temprature

#========================Outliers in wind variable==========================
boxplot(wind,main = "Boxplot for wind", horizontal = TRUE)
#there are three outliers
#it is negatively skewed 


#======================== Median of temp ==========================
median(temp)
#19.3

#===================== mean and sd of wind  =======================
mean(wind)    # 4.017602
sd(wind)      # 1.791653

#=======================IQR of wind ===============================
IQR(wind)     # 2.2


#========== How many observations for Friday in August============
freq_1<-table(day,month)
freq_1     #21

#========== Average temperature, during September============
mean(temp[month=="sep"])
#19.61221







