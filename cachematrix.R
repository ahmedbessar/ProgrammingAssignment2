#makeCacheMatrix creates a special matrix object, and then what the cacheSolve does is it

#calculates the inverse of the matrix.

#If the matrix inverse has already been calculated, it will instead

#find it in the cache and return it, and not calculate it again. This the quality of this assignment.

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invrs <- NULL
    set <- function(y){
        x<-y
        invrs <- NULL
    }
    get <- function()x
    setinverse <- function(inverse) invrs <- inverse
    getinverse <- function()invrs
    list(set=set, get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        invrs <= x$getinverse()
    if(!is.null(invrs)){
        message("getting cashed data")
        return(invrs)
    }
    mat <- x$get()
    invrs <- solve(mat,...)
    x$setinverse(invrs)
    invrs
}
