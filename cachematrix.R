## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function that creates a matrix that caches its inverse

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinverse <- function(given_inverse) inv <<- given_inverse
	getinverse <- function() inv
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function
## This function returns the cached inverse of a matrix or calculates the inverse and stores it

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)){
        	message("getting cached inverse")
        	return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}
