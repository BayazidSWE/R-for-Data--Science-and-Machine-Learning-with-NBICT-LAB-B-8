#Creating a data frame
dataset=data.frame(dose= c("D0.5","D1", "D2"),
                   length = c(4.2, 10, 29.5))
library(ggplot2)
#Basic barplot
ggplot(dataset, aes(x=dose, y=length))+
  geom_bar(stat= "identity")

#Horizontal bar plot
ggplot(dataset, aes(x=dose, y=length))+
  geom_bar(stat= "identity")+coord_flip()

#Changing the width of bars
ggplot(dataset, aes(x=dose, y=length))+
  geom_bar(stat= "identity", width= .5)

#Changing colors
ggplot(dataset, aes(x=dose, y=length))+
  geom_bar(stat= "identity", width= .5, color="blue")

#Minimal theme + blue fill color
ggplot(dataset, aes(x=dose, y=length))+
  geom_bar(stat= "identity", fill= "steelblue", color="blue")+ 
  theme_minimal()

#Bar plot with labels
#outside of the bars
ggplot(dataset, aes(x=dose, y=length))+
  geom_bar(stat= "identity", fill="steelblue")+
  geom_text(aes(label=length), vjust= -.5, size= 4, color="red")

#inide of the bars
ggplot(dataset, aes(x=dose, y=length))+
  geom_bar(stat= "identity", fill="steelblue")+
  geom_text(aes(label=length), vjust= .5, size= 4, color="red")

myCar=mtcars

#Barplot of counts
# To make a barplot of counts, we use mtcars dataset
ggplot(data=myCar, aes(x=factor(cyl)))+ geom_bar(stat = "count",
        width = .7, fill="steelblue")+ theme_minimal()                                         


