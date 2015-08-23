

## The following function is to cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        ## This function creates a special "matrix" object that can cache its inverse
        
}
xinv<-function(y){
        
                xinv<- NULL
                ## "inv" is where the results of inversion to be stored
                set <- function(y) {
                        ## to retur
                        x <<- y
                        xinv<<- NULL
                        ## to set xinv to NULL
                }
                get <- function() x
                ## to return
                setInv <- function(inv) xinv <<- inv
                ## to set the inversed matrix
                getInv <- function() xinv
                ## to return the inversed matrix
                list(set = set, get = get,
                     setInv = setInv,
                     getInv = getInv)
                ## to recreate the new list
}


##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        m <- x$getInv()
        # get the inversed matrix of x
        if(!is.null(m)) {
                message("getting cached data")
                return(m) 
                ##if the inversion result is available
                ## then return to m
        }
        data <- x$get() ## if it is not available, to get the matrix object
        m <- solve(data)
        x$setInv(m)
        ## to set it to the object
        m
        ## to return
}
