## "makeCacheMatrix" and "cacheSolve" that cache the inverse of a matrix
## Write a short comment describing this function	## makeCacheMatrix is a function which creates a special "matrix" object that can 
## cache its inverse for the input (which is an invertible square matrix)  
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
