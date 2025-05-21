#Descriptive Statistics using the psych package

install.packages("psych")
library(psych)

data()
BOD 

#Using the new York airport flight data
install.packages("nycflights13")
attach(nycflights13::flights)

#To get the overall idea of the data set
head(nycflights13::flights)

#To get summary of a specific variable
summary(distance)
#To get more of a specific variable using psych package
describe(distance)

#TO get data of more than one variable from a dataset
data= cbind(arr_delay,dep_delay,distance)
data
describe(data)
