#Importing the dataset
dataset=read.csv("data.csv")

#Importing the library
library(ggplot2)

#Creating a basic histogram
ggplot(dataset, aes(x=weight))+
  geom_histogram(color="light blue")

#Changing histogram plot line colors by groups
ggplot(dataset, aes(x=weight, fill=sex))+
  geom_histogram(color="light blue")


#Changing histogram plot line colors by groups
ggplot(dataset, aes(x=weight, fill=sex))+
  geom_histogram(color="light blue", alpha=.5, position="dodge")

# we can change the position adjustment to use for overlapping
  #points on the layer
# Possible values for the argument position are
  #"identity", "stack", "dodged". Deafault is "stack"
  
#Interleaved histograms
ggplot(dataset, aes(x=weight, fill=sex))+
  geom_histogram(color="light blue", alpha=.5, position="dodge")+theme(legend.position = "top")
  
#The plyr package is used to calculate the mean of each group
#install.packages("plyr") 
library(plyr)

#Calculating group means by ddply function
group_means= ddply(dataset, "sex", summarise, grp.mean=mean(weight))
group_means

#Adding mean lines
my_plot=ggplot(dataset, aes(x=weight, fill=sex))+
  geom_histogram(color="light blue", alpha=.5, position="dodge")+
  geom_vline(data=group_means, aes(xintercept = grp.mean, colour = sex, linetype = "dashed"))+
  theme(legend.position = "top")

my_plot

#Using custom color palettes
my_plot+scale_color_manual(values = c("red", "orange"))+
  scale_fill_manual(values = c("red", "orange"))

#Using brewer color palettes
my_plot+scale_color_brewer(palette="Dark2")+
  scale_fill_brewer(palette= "Dark2")

#Using a grey scale
my_plot+ scale_color_grey()+scale_fill_grey()+
  theme_classic()
