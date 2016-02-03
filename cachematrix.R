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


## The following function returns a matrix that is as inversed 
## version of initial matrix

cacheSolve <- function(x, ...) {
        solve(x)
}
