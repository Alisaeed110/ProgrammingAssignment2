## Put comments here that give an overall description of what your
## functions do This function creates a special "matrix" object that can cache its inverse.


## Write a short comment describing this function


  makeCacheMatrix <- function(x = matrix()) 
  {
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  }
  
  




## Write a short comment describing this function

cacheSolve <- function(x, ...) 
  {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
  }
c<-matrix(c(1,2,3,4),2,2)
a<-makeCacheMatrix(c)
cacheSolve(a)
