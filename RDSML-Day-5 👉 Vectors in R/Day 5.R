#vectors in R

#Creating a vector using the c() command
student.height= c(60, 69, 55, 52)
student.height

#Checking the class (data type)of the vector student.height
is.numeric(student.height)
is.logical(student.height)

#R automatically converts numeric to text,
#when we have a text item in the vector
b=c(5,8,"sv")
b
is.numeric(b)
is.character(b)
is.logical(b)
#we can convert data types
#For example: From numeric to character
a=c(1,2,3,4)
class(a)
is.numeric(a)
a=as.character(a)
a
class(a)

#Logical operator True and False when converted
#to numeric, True converts to 1, False to 0
d=c(TRUE, FALSE, FALSE, TRUE)
d=as.numeric(d)
d
class(d)
print(d)

#Convering Numeric to Logical: (1 or any number
#other than 0 converts to True, 0 to False)
d=as.logical(d)
d
e=c(1,0,0,3,-6)
e=as.logical(e)
e

#Creating Sequencial Vector
#Creating a Vector starting from 1 to 10
my_seq=c(1:100)
my_seq=c(1:10,14,19,21, 37,53)
my_seq

#Creating Sequencial Vector using seq()function
new_seq=c(seq(1,10))
new_seq

#Sequence in gap steps
new_seq=c(seq(1,10, by=3))
new_seq

#Vectors can have any data type
#Vectors as Character
names=c("Bayazid", "Toma", "Sky")
names
class(names)
names[2]
names[1:2]

#Assaigning names to Vector values
my_Values=c(1,4,7,18)
names(my_Values)=c("a","b","c","d")
my_Values
my_Values["d"]



