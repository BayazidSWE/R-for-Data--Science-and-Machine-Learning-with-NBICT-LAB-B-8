library(ggplot2)
dataset= mtcars

#Converting a variable column to a factor variable
#Converting cyl variable column to a factor variable
dataset$cyl= as.factor(dataset$cyl)

#Adding regression lines based on multiple groups
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl,size=cyl) )+ 
         geom_point()+geom_smooth(method=lm, se=FALSE)
   
# Extending the Regression line
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+ 
  geom_point()+geom_smooth(method=lm, se=FALSE, fullrange=TRUE)

#Filling the color of confidence bands
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+ 
  geom_point()+geom_smooth(method=lm, aes(fill=cyl))

#Changing point shapes manually
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+ 
  geom_point()+geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(16,2,17))

#Changing the legends position
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+ 
  geom_point()+geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(16,2,17))+theme(legend.position = "top")


#Changing point colors manually
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+ 
  geom_point()+geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_color_manual(values=c("darkblue","red", "orange"))

#Customizing scatter plots
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+ 
  geom_point()+geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  labs(title = "mpg as \nper wt", x="Weight", y="miles per Gallon")

#Customizing themes
plot=ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+ 
  geom_point()+geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_color_manual(values=c("darkblue","red", "orange"))+
  labs(title = "mpg as \nper wt", x="Weight", y="miles per Gallon")+
plot+theme_classic()
plot+theme_minimal()
