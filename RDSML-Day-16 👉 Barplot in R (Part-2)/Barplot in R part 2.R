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
#Changing barplot line colors by groups
ggplot(dataset, aes(x=dose, y=length, color=dose))+
  geom_bar(stat= "identity", fill="white")
  
#Using custom color palettes
ggplot(dataset, aes(x=dose, y=length, color=dose))+
  geom_bar(stat= "identity", fill="white")+ 
  scale_color_manual(values= c("blue", "red", "green"))

#Using brewer color palettes
ggplot(dataset, aes(x=dose, y=length, color=dose))+
  geom_bar(stat= "identity", fill="white")+
  scale_color_brewer(palette="Dark2")

#Using a grey scale
ggplot(dataset, aes(x=dose, y=length, color=dose))+
  geom_bar(stat= "identity", fill="white")+
  scale_color_grey()+ theme_classic()

#Changing barplot fill colors by groups
ggplot(dataset, aes(x=dose, y=length, fill=dose))+
  geom_bar(stat= "identity")

#Using custom color palettes
ggplot(dataset, aes(x=dose, y=length, fill=dose))+
  geom_bar(stat= "identity")+ 
  scale_fill_manual(values=c("red", "blue", "green"))

#Using brewer color palettes
ggplot(dataset, aes(x=dose, y=length, fill=dose))+
  geom_bar(stat= "identity")+ scale_fill_brewer(palette= "Dark2")

#Using a grey scale
ggplot(dataset, aes(x=dose, y=length, fill=dose))+
  geom_bar(stat= "identity")+
  scale_fill_grey()+ theme_classic()

#Cutsomize the outline color
ggplot(dataset, aes(x=dose, y=length, fill=dose))+
  geom_bar(stat= "identity", color="black")

#Changing the legend position
ggplot(dataset, aes(x=dose, y=length, fill=dose))+
  geom_bar(stat= "identity")+ theme(legend.position = "top")

#Changing bar fill colors to blues
ggplot(dataset, aes(x=dose, y=length))+
  geom_bar(stat= "identity", color= "red", fill="blue")

