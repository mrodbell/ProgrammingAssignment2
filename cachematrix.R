##
## File:    cacheMatrix
##
## Author:  Mike Rodbell
##
## Purpose: This file contains two primary functions that can be used to 
##          create a matrix for which a result set may be cached. In this
##          case, the result set is the inversion of the original matrix,
##          using the R scope functions.
## 

## 
##  Function: makeCacheMatrix
##
##  Purpose:  makeCacheMatrix contains a set of functions to create
##            and manipulate 

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


##
##  Function: cacheSolve
##
##  Purpose:  returns the inverted case of the input matrix. To help 
##            alleviate processing time, it will cache the results to 
##            simply return the last operation
##

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    m
    return(m)
  } 
  message("computing result for the first time")
  data <- x$get()
   
  ## calculate inverse of data
  m <- solve(data)
  x$setinverse(m)
  m
  return(m)
}
