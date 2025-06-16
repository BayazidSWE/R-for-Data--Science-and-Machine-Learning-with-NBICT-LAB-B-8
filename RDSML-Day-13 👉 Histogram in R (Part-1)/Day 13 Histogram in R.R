#Importing the External dataset
dataset= read.csv("data.csv")

#Importing the library
library(ggplot2)

#Basic histogram using ggplot2
ggplot(dataset, aes(x=weight))+
  geom_histogram()

#Changing the width of bins
ggplot(dataset,aes(x=weight))+
  geom_histogram(binwidth = 2)

#Changing colors
ggplot(dataset, aes(x=weight))+
  geom_histogram(binwidth = 1, colour= "red", fill= "light green")

#Adding the mean line
my_Plot= ggplot(dataset, aes(x=weight))+
  geom_histogram(colour= "red", fill= "light green")
my_Plot+geom_vline(aes(xintercept=mean(weight)), color="blue")

##Changing the type and size of the mean line
my_Plot= ggplot(dataset, aes(x=weight))+
  geom_histogram(colour= "red", fill= "light green")
my_Plot+geom_vline(aes(xintercept=mean(weight)),
        color="blue", linetype="dashed", size= 1)

#Histogram with density plot
ggplot(dataset, aes(x=weight))+
  geom_histogram(aes(y=after_stat(density)),colour= "red", fill= "light green")+
  geom_density(fill="blue", alpha=.2)

#Changing line color and fill color
ggplot(dataset, aes(x=weight))+
  geom_histogram(aes(y=after_stat(density)),colour= "red", fill= "light green")+
  geom_density(fill="blue", alpha=.2)

