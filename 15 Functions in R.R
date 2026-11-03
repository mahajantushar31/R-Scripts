# Functions or Definitions in R

mycube <- function(x) {
  return(x**3)
}

mycube(25)
mycube(19)
mycube(6)




mymulti <- function(x,y) {
  return(x*y)
}

mymulti(25,7)
mymulti(10,9)
mymulti(3,5)



# Classwork create mydiv for Division of numbers

mymulti(5,8) * mycube(15)



fullname <- function(fname, sname) {
  print(paste(fname, sname))
}


fullname('rajesh', 'khanna')



fullname <- function(fname,sname) {
  print(fname)
}

fullname('rajesh','khanna')
