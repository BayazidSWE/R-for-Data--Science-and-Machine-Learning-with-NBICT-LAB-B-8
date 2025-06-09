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

#Adding the regression line
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=18)+
  geom_smooth(method=lm)

#Removing the confidence interval
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=18)+
  geom_smooth(method=lm, se= FALSE)

#Loess method
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=18)+
  geom_smooth()
 
# Changing the type and color of the line
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=18)+
  geom_smooth(method=lm, linetype= "dashed", color="darkred")

# Changing the confidence interval color of the line
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=18)+
  geom_smooth(method=lm, linetype= "dashed", color="darkred", fill= "blue")

# Changing the color of the point
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=3, shape=18, color= "red")+
  geom_smooth(method=lm)

# Scatter plots with multiple groups

#converting the cyl column from numeric to factor 
dataset$cyl= as.factor(dataset$cyl)

#Changing the point shapes by the level of cyl
ggplot(dataset, aes(x=wt, y=mpg, shape= cyl))+
  geom_point()

#Changing the point shapes and color by the level of cyl
ggplot(dataset, aes(x=wt, y=mpg, shape= cyl, colour = cyl))+
  geom_point()

#Changing the point shapes, size and color by the level of cyl
ggplot(dataset, aes(x=wt, y=mpg, shape= cyl, colour = cyl, size= cyl))+
  geom_point()
