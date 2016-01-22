

##These functions should be called in succession.
##First, makeCacheMatrix is called  to create a matrix with 
##additional functionaility in the form of a list
##Second, cacheSolve will be called to retrieve the matrix inverse
##either from cache, or via fresh calculation


##This function takes a numeric vector and
## a single dimension. 
## It will create a list containing
##   1) a square matrix
##   2) a function to calucate the inverse and store the result in cache
##   3) a function to retrieve the inverse from cache
## example call:   makeCacheMatrix(matrix(c(2,3,4,5),nrow=2, ncol=2))

makeCacheMatrix <- function(x = matrix()) {
  
  matInverse <<-NULL
  inv <-NULL
  calcInverse <-function(){ matInverse <<- solve(x)}
  retrieveCache <-function () {matInverse}
  list(retrieveCache=retrieveCache, calcInverse=calcInverse)

}


## This function should be called with the matrix/list
## created by makeCacheMatrix()
## 
## example call: cacheSolve( makeCacheMatrix(matrix(c(2,3,4,5),nrow=2, ncol=2)) )

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          inv <- m$retrieveCache()
	  if(!is.null(inv)) {
	    ##message("getting cached data")
	    inv
	  } else {
	    ##message("solving inverse")
	    m$calcInverse()
	    m$retrieveCache()
  }
}
