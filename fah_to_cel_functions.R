#converting fahrenhite to kelvin
fah_to_kelvin <- function(temp) {
  kelvin <- ( (temp- 32) * (5 / 9)) + 273.5
  return(kelvin)
}

#How about converting Kelvin to Celsius
kel_to_cel <- function(temp) {
  celsius <-temp -273.5
  return(celsius)
}

#write a function to convert far to cel
## putting two together
fah_to_celsius <-function(temp){
  temp_k <-fah_to_kelvin(temp)
  result <-kel_to_cel(temp_k)
  return(result)
}