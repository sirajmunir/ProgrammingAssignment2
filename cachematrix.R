## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  data <- x
  getMatrix <- function() x
  getInverse <- function() inverse
  setInverse <- function(y) inverse <<- y
  list(getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  checkInverse <- x$getInverse()
  if(!is.null(checkInverse))
  {
    message("getting cached data")
    return(checkInverse)
  }
  solvedMatrix <- solve(x$getMatrix())
  x$setInverse(solvedMatrix)
  return(solvedMatrix)
  
}
