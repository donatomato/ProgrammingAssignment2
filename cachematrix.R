## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function takes an argument of matrix x
## 1. Sets the value of the matrix
## 2. Gets the value of the matrix
## 3. Sets the value of the inverse 
## 4. Gets the value of the inverse 
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## This function computes for the inverse of the matrix returned by the function above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}
