setwd("D:\\Documents\\SLIIT\\Pre reading material year 2 semester 2\\Prob & Stat\\05")

#import file
data4 <- read.table("Data.txt", header = TRUE, sep = ",")
data4 #view data

#fix data
fix(data4)

#set col names 
names(data4) <-c("x1","x2")

#attach to R
attach((data4))

#create histogram 
hist(x2, main = "Histogram")

#========================================================================================

#draw histogram with specific number of classes and given lower limit and upper limit
#number of classes should be given one extra - eg if number of classes is 7, give 8

#obj    command   col            main title              lower bound | upper bound | Np.of classes
histogram <- hist(x2, main = "Number of shareholders",breaks = seq(130,270,length = 8), right = FALSE)
# 130 - lower bound, 270 - upper bound, 7 - wanted number of classes [therefore 7+1]


#========================================================================================

#Construct the frequency distribution for the above specification
#obj | round up | histogram obj | breakpoints
breaks<- round(histogram$breaks)
breaks  #130 150 170 190 210 230 250 270


#========================================================================================

#frequencies of each variable
#obj | histogram obj | count of each class
freq <- histogram$counts
freq    # 4 9 4 6 3 2 4


#========================================================================================

#mid point of each class
#obj | histogram obj | mid Points
mids<- histogram$mids
mids   #140 160 180 200 220 240 260


#========================================================================================
breaks  #130 150 170 190 210 230 250 270
classes <- c() #vector class
i<- 1
#assign break points to empty vector (classes)
for(i in 1:length(breaks)-1){
  classes[i] <- paste0("[", breaks[i],",", breaks[i+1],")")     #paste0 leaves no space when pasting
}

classes
#"[130,150)" "[150,170)" "[170,190)" "[190,210)" "[210,230)" "[230,250)" "[250,270)"


#cbind() to join two sets of columns together into a single data frame.
cbind(Classes = classes, Frequency = freq)
#displays a table with cols as classes and Frequancy, Classes shows range as above and 
#frequancy shows the number of occurances as above


#========================================================================================
#line graph
#Portray the distribution in the form of a frequency polygon.
lines(histogram$mids,freq)
#or
plot(mids,freq,type='l', main="Frequency polygon for share holders", ylab ="Frequency", xlab="ShareHolders")


#========================================================================================

# Portray the distribution in a less-than cumulative frequency polygon.
cum.freq <-cumsum(freq)
cum.freq   # 4 13 17 23 26 28 32

new<-c()

for(i in 1:length(breaks)){
  if(i==1){new[i]=0}
  else{new[i]=cum.freq[i-1]}
}

new     # 0  4 13 17 23 26 28 32

plot(breaks,new,type='o', main="Frequency polygon for share holders", ylab ="Cumulative frequency", xlab="ShareHolders", ylim = c(0,max(cum.freq)))







