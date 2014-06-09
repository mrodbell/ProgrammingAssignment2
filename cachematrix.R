## Put comments here that give an overall description of what your
## functions do

## File: cacheMatrix
##
## Author: Mike Rodbell
## 

## 
##  Function: makeCacheMatrix
##
##  Purpose:  makeCacheMatrix contains a set of functions to create
##            and manipulate 

makeCacheMatrix <- function(x = matrix()) {
## stuff from makeVector
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
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
}
