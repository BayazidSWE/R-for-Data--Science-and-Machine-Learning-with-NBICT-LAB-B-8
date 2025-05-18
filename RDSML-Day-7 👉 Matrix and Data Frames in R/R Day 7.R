#Matrix in R
study_hours=c(45,89,69,75,63,54,23,25,57,46)
subject_marks=c(79,53,67,71,51,49,77,46,81,63)

#Creating a single vector to matrix
#For example, 
study_hours_matrix=matrix(study_hours)
study_hours_matrix

#Creating two set vector matrix
#or joining two columns in a matrix
student_data=c(study_hours,subject_marks)
student_data_matrix=matrix(student_data)
student_data_matrix
student_data_matrix=matrix(student_data, byrow=FALSE, nrow = 10)
student_data_matrix
student_data_matrix=matrix(student_data, bycolumn=TRUE, ncol = 2)
student_data_matrix

#Naming rows and column in a matrix
#Naming of columns
colnames(student_data_matrix)=c("Hours", "Marks")

#Naming of rows 
row.names(student_data_matrix)=c(1:10)
student_data_matrix

#Selecting a specific element from a matrix
student_data_matrix[6,2]

#Finding statistical summary if needs
summary(student_data_matrix)

#Data Frames in R(used to dual presentation of numeric and categorized data)

student_name=c("Monu", "Kona", "Tomal", "Toma","Boni")
weight=c(70, 60, 80, 65,50)
marks= c(80, 67, 58, 91, 45)
gender=c("male", "female", "male","female", "female" )
male=c(TRUE, FALSE, TRUE, FALSE, FALSE)

student_data= data.frame(student_name, weight,marks,gender,male)
summary(student_data)

#Calling particular variable from a constructed data frame
# call the produced data frame, then press$(Dollar)then select specific variable

student_data$student_name
student_data$marks


#practices

weight = c(45, 57,91, 60, 78)
marks= c(55, 60, 71, 45, 90)
height=c(5,5,6,6,4)
data_matrix=matrix(weight,marks,height)
data=matrix(data_matrix, byrow = FALSE, nrow=5 )
data=matrix(data_matrix, bycolumn= TRUE, ncol = 3)
data

colnames(data)=c("weight", "marks", "height")
row.names(data)=c(1:5)
data
