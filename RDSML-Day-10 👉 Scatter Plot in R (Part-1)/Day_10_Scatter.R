#installing ggplot2

install.packages("ggplot2")
library(ggplot2)

#using mtcars dataset for creating scatter plot

dataset=mtcars

#Generating a basic scatter plot using mtcars by ggplot2
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point()

#Changing the point size and shape in a scatter plot
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=5)

