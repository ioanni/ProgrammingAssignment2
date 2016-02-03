## This file represents two functions for caching of initial and
## inversed matrices

## The following function creates a "matrix" object, which is really
## a list containing functions to:
## 1. set the value of the matrix
## 2. get the value of the matrix 
## 3. set the value of inversed matrix 
## 4. get the value of inversed matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inversed) inv <<- inversed
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv, getinv = getinv)
}


## The following function returns a matrix that is an inverse 
## of special "matrix", returned by makeCacheMatrix function

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if (!is.null(inv)) {
          message("Retrieving the inverse from cache")
          return(inv)
        }
        
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        return(inv)
}
