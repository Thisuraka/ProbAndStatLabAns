setwd("D:\\Documents\\SLIIT\\Pre reading material year 2 semester 2\\Prob & Stat\\03")


#==============import file from lec 03 folder========================
data<-read.csv("DATA3.csv",header=TRUE)
data
fix(data)

names(data)<-c("Age","Gender","Accomadation")      #changed coloumn headings
data

#changing vals of gender to male and female instead of 1 and 2
data$Gender<-factor(data$Gender,c(1,2),c("Male","Female"))
data

#changing vals of Accomadation to instead of 1,2,3
data$Accomadation<-factor(data$Accomadation,c(1,2,3),c("House","Rent","Boarded"))
data


#===================always attach the data before analysis========================
attach(data)
mean(Age)      #21.95745


#++++++++++++++++++++++++++++++++++frequancy table++++++++++++++++++++++++++++++++    AKA No, of occurances
gender_freq<-table(Gender)
gender_freq

accom_freq<-table(Accomadation)
accom_freq

#++++++++++++++++++++++++++++++++++++++++Bar chart / Bar plot+++++++++++++++++++++++++++++++++ 
#eg1
#command   obj            main title                  y axis            xaxis
barplot(gender_freq,main = "Bar plot for Gender",ylab = "Frequency", xlab = "Gender")

abline(h=30)    #adds a line at said spot ------h means horizontal

#eg2
#command   obj            main title                  y axis            xaxis
barplot(accom_freq,main = "Bar plot for Accom",ylab = "Frequency", xlab = "Accom")
abline(h=0)    #adds a line at said spot


#++++++++++++++++++++++++++++++++++++++++Pie chart+++++++++++++++++++++++++++++++++ 
#eg1
#command   obj            main title                
pie(gender_freq,main = "Pie Chart for Gender")

#eg2
#command   obj            main title                
pie(accom_freq,main = "Pie Chart for Accom")


#++++++++++++++++++++++++++++++++++++++++Box Plot+++++++++++++++++++++++++++++++++ 
#eg1
boxplot(Age,main="Box plot of Age", horizontal = TRUE)


#++++++++++++++++++++++++++++++++++++++++Histograms+++++++++++++++++++++++++++++++++ 
#eg1
hist(Age,main="Histogram for Age")


#+++++++++++++++++++++++++++++++Two-Way Frequency Table+++++++++++++++++++++++++++++ 
#eg1
Gender.Accomadation.table<-table(Gender,Accomadation)
Gender.Accomadation.table

#+++++++++++++++++++++++++++++++Stacked/Component bar chart++++++++++++++++++++++++
barplot(Gender.Accomadation.table, main = "Stacked Bars",ylab = "Frequency", xlab = "Accom", legend=rownames(Gender.Accomodation.table))


#++++++++++++++++++++++++++++++==++++Multiple bar chart+++++++++++++++++++++++++++++
barplot(Gender.Accomadation.table, beside=TRUE ,main = "Multi Bars",legend=rownames(Gender.Accomodation.table),ylab = "Frequancy",xlab = "Accomodation")


#+++++++++++++++++++++++++++++++Side-by-side Box Plot++++++++++++++++++++++++
#eg1
boxplot(Age~Gender,main="Side by side boxplot",xlab="Gender",ylab="Age",horizontal = TRUE)
#eg2
boxplot(Age~Accomadation,main="Side by side boxplot",xlab="Gender",ylab="Accomodation",horizontal = TRUE)


#+++++++++++++++++++++++Summation+++++++++++++++++++++++++++++++++
xtabs(Age~Gender+Accomadation)


#+++++++++++++++++++++++Mean+++++++++++++++++++++++++++++++++
xtabs(Age~Gender+Accomadation)/Gender.Accomodation.table

