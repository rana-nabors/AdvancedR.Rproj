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

dir.create("data")  # create a directory 
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder.csv")

#gapminder <-read.csv("gapminder-FiveYearData.csv")
#clear functions

source("fah_to_cel_functions.R")
fah_to_cel(0)
fah_to_celsius(0)

dat <-read.csv("data/gapminder.csv", header=TRUE)
head(dat)
summary(dat)
str(dat)

##control enter instead of run!!
## dat need a function that accepts country as an arg and calculates min max and mean of life expectancy

#subset data frame first
#write a function called analyze that takes country as argument and 
#displays mean, min max of lifeEXp by country

#subsettting the data fram (different methods)
country_name <-subset(dat, dat$country == "Uganda")

#subset requires two arguments
#calculate mean, min and max of lifExp
#either method is fine
mean(country_name[,5])
min(country_name$lifeExp)
max(country_name$lifeExp)


#function now
analyze <- function(country){
  country_name <-subset(dat, dat$country == country)
  print(mean(country_name[,5]))
  print(min(country_name$lifeExp))
  print(max(country_name$lifeExp))
  #out <- c("Mean_le"= mean(country_name[,5]),"Mean_le"= min(country_name$lifeExp), "Mean_le"= max(country_name$lifeExp))
  #print(out)
   }


analyze("Uganda")


analyze <- function(countr){
  country_name <-subset(dat, dat$country == countr)
  print(mean(country_name$lifeExp))
  print(min(country_name$lifeExp))
  print(max(country_name$lifeExp))
  }
analyze("Iran")

##Modify the analysis function to generate a plot with "Year" on x axis and LifeExp on Y-axisadd a plot 
analyze <- function(countr){
  country_name <-subset(dat, dat$country == countr)
  print(mean(country_name$lifeExp))
  print(min(country_name$lifeExp))
  print(max(country_name$lifeExp))

  plot(country_name$year, country_name$lifeExp, xlab= "Year", ylab="Life Expectancey", 
       main = countr)
  
  
  #year_1= country_name$year
  #Life_A= country_name$lifeExp
  
  
  #plot(year_1, Life_A)
  
}
analyze("United States")

##adding lables to x and y axice
plot(country_name$year, country_name$lifeExp, xlab= "Year", ylab="Life Expectancey", main = "Countr")
####
#this is the equivalent of the for loop
best_practice
best_practice_fun <-function(some_argument){
  print(some_argument[1])
  print(some_argument[2])
  print(some_argument[3])
  print(some_argument[4])
  print(some_argument[5])
  print(some_argument[6])
}
best_practice_fun(best_practice)
##instead of the method "best practices" above you can make a loop, so you don't have to print
# each line separately
#w is the iterator 
for(w in best_practice){
  print(w)
}

best_practice_fun2 <- function(some_argument){
  for(w in some_argument) {
    print(w)
    }
}
#a loop variable 
best_practice_fun2(best_practice)


##Generate a file taht contains years 1952 and 1997 and name it as gapminder_52_97
#and anoher file that contains years 1966 and 2007 and name it as gapminder_66_07

gapminder_52<-subset(dat, dat$year == 1952)
gapminder_97<-subset(dat, dat$year == 1997)

gapminder_52_97 <-rbind(gapminder_52, gapminder_97)
gapminder_52_97

gapminder_67 <-subset(dat, dat$year == 1967)
gapminder_07 <-subset(dat, dat$year == 2007)
gapminder_67_07 <-rbind(gapminder_67, gapminder_07)
gapminder_67_07
# write a csv file into the files. 
write.csv(file = "data/gapminder_52_97.csv", gapminder_52_97, row.names =FALSE, quote =FALSE)
write.csv(file = "data/gapminder_67_07.csv", gapminder_67_07, row.names =FALSE, quote =FALSE)
list.files(path = "data", pattern = ".csv", full.names =TRUE)
#Exercise 


    
    
  
 #analyze three files and three outputs  
 for(w in   analyze <- function(countr){
   country_name <-subset(dat, dat$country == countr)
   print(mean(country_name$lifeExp))
   print(min(country_name$lifeExp))
   print(max(country_name$lifeExp))
   print(w)
   
}
# WRite a for loopto print each filename on a different line

Lists_3<-list.files(path ="data", pattern = ".csv", full.names =TRUE)
for(w in Lists_3){
  analyze(w, "Uganda")
}
###############
analyze <- function(filename, countr){
#readcsvfile
    dat <-read.csv(filename, header=TRUE)
    country_name <-subset(dat, dat$country == countr)
    print(mean(country_name$lifeExp))
    print(min(country_name$lifeExp))
    print(max(country_name$lifeExp))
    print(w)
    }
for(w in Lists_3){
  analyze(w, "Uganda")
   }

#analyze(list.files(path ="data", pattern = ".csv", full.names =TRUE))

##answer
##analyze_data ("data/gapminder.csv", "Uganda")
#analyze_all <-function(pattern, new){
 # filenames <-list.files(path = "data", pattern = pattern, full.names =TRUE)
#  for (f in filenames)
 #   analyze_data(f, new)
#}
# analyze_all(".csv", "Uganda")
