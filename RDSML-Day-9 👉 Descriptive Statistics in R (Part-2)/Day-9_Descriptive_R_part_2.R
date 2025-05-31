# Descriptive statistics using the psych package

install.packages("psych")
library(psych)

data()
AirPassengers
BOD

# Using the New York airport flight data
install.packages("nycflights13")
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)
summary(distance)
describe(distance)

demo = cbind(arr_delay, dep_delay, distance)
describe(demo)

#Introducing the colnames function
colnames(demo)=c("Arrival delay", "Departure delay", "Distance Travelled")
describe(demo)

#Introducing the hist()function
dep_delay
hist(dep_delay)

#How to group descriptive statistics
head(nycflights13::flights)
summary(carrier)
carrier_fact=factor(carrier)
summary(carrier_fact)

describeBy(distance, group= carrier)

# Two level of aggregation
aggregate(distance, by=list(carrier, month), FUN=mean, na.rm=TRUE)

