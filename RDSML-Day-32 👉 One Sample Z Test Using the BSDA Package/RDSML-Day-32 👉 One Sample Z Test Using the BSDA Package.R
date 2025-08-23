#One sample Z test
#Installing the BSDA package
install.packages("BSDA")
library("BSDA")



#Importing the dataset
dataset=read.csv("Perfume.csv")
mean(dataset$Machine.1)


#Running the test 
z.test(x=dataset$Machine.1,
       alternative = "greater", 
       mu= 150, sigma.x = 2)



#Result interpretation
