#arithmatics
#assigning variables
#plotting in R
x<-c(1,2,3)
y<-c(3,4,1)
plot(x,y)
#class of variables
class(x)
str<-"this is my script"
class(str)
length (x)
#clear my history
rm(list = ls())
#clears the Console control L 
#functions
#functions sd, max, mean are all functions Looking at size of dataframe and so forth

#total function
#each function has 4 componants 1) the name, 2)the fucntion statement, 3)the arguement and 4)the return statement(optional)

my_sum <- function(input_1, input_2) {
  tot = input_1 +input_2
  return(tot)
}

#arguments
input_1 =3
input_2 =4
input_1 +input_2
#now if you insert the inputs into my_sum, you get the answer
my_sum(input_1, input_2)
#you can call functions so the one function can work with different versions of the data
my_sum(input_1=3, input_2=7)
my_sum(input_1=2, input_2=2)

#converting fahrenhite to kelvin
fah_to_kelvin <- function(temp) {
  kelvin <- ( (temp- 32) * (5 / 9)) + 273.5
  return(kelvin)
}
fah_to_kelvin(temp= 62)
fah_to_kelvin(62)

#How about converting Kelvin to Celsius
kel_to_cel <_ function(temp) {
  celsius <-temp -273.5
  return(celsius)
  
}

write a function to convert far to cel


far_to_cel <-function(temp){
  celsius <-temp -32
  return(celsius)
}

far_to_cel(temp=86)
###TRYING WITH TWO FUNCTINS
far_to_cel_1 <-function(temp) {
    celsius = (temp -32) *(5 /9)
    return(celsius)
  }
## putting two together
fah_to_celsius_2 <-function(temp){
  temp_k <-fah_to_kelvit(temp)
  result <-kel_to_cel(temp_k)
  return(result)
}

Excersise two
best_practice <-c("write", "programs","for", "people", "not", "computers")
astrix <- "***"

#write a function called fence that takes two arguemnts and a new vector with asterix at the beginning and end

"***"

fence <- function(input_1, input_2){
  result <- c(input_2, input_1, input_2)
  return(result)
}
  
fence(input_1= best_practice, input = astrix)

