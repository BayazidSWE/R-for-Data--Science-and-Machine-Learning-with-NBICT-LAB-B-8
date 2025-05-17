#Factor in R

#Summary of numeric items
learners_age=c(34,29,57,41)
summary(learners_age)

#Finding summary of Characters

profession=c("Teacher","Doctor","Teacher", "Student")
summary(profession)

profession=factor(profession)
summary(profession)

#Putting the summary in order
birth_month= c("July", "May", "March", "December", "May", "May", "October")
summary(birth_month)
birth_month_fact=factor(birth_month,
                        ordered = TRUE,
                        levels = c("March", "May", "July", "October","December"))
summary(birth_month_fact)

#Lists in R
#Lists are used to place bumber of items in a bundle

a=c(2,4,7)
b=c("Red", "Green", "Blue")
c="welcome" 

myList= list(a,b,c)
myList

# Naming the list items
myList= list(Pieces=a, Colors=b,Message=c)
myList  
  
#Calling a  specific data structure from a list
myList[2]
myList$Colors  
myList["Colors"]  
  
#Calling specific item from the specific data structure
myList$Colors[2]
  
  
  
  
  
  


