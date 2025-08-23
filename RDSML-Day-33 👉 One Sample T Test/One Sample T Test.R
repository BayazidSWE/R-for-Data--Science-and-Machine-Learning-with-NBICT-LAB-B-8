##Importing the dataset
Mydata=read.csv("bottle_data.csv")

#Checking normality
#shapiro-wilk Test

shapiro.test(Mydata$value)

#one sample T test
t.test(x=Mydata$value, mu=150)
