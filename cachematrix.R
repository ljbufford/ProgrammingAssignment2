## Put comments here that give an overall description of what your
## functions do TO DO!!!

## makeCaheMatrix creates a matrix like object that allows the inverse of 
## the matrix to be stored for future use, and returns a list of functions.
## The inverse is initially set to NULL. It contains 4 functions: set, get,
## setinverse, getinverse. The function set resets the inverse to null if
## the matrix is changed. 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSole returns the inverse of a CacheMatrix object. If the inverse has
## already been computed it returns the inverse stored. If not, it solves 
## for the inverse then calls the setinverse function to store it for future
## use, and returns the computed inverse. 

cacheSolve <- function(x, ...) {

  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
