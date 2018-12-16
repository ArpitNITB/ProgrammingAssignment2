## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# we are here creating a functiom which will catch inverse of matrix, as inversion of matrix is a time consuming , time can be saved as we will not have to do it again and again.


## There are two functions for creating a special object that stores a matrix and also caches its inverse
## stores a matrix and caches its inverse.

## The following function is to create a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function

# Following functiom calculate inverse of the matrix created by the function created above "makeCacheMatrix "
# Ifthe maxtrix has not been changed and inverse has already been created then it will get inverse from thr cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
