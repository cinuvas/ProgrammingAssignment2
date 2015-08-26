## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Function set's up the enviroment, to create & hold global variables.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        ##Not been used in this scenario
        ##To set the input matrix
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        ##Fetch the Intupt matrix  back
        get <- function() x
        
        ##Set the Inversed matrix
        setinv <- function(solve) m <<- solve
        
        ##Fetch the Inverse matrix  back
        getinv <- function() m
        list(set = set, get = get,
		setinv = setinv,
		getinv = getinv)
}


## Write a short comment describing this function
## This is the function inverse the matrix & cache it for future use.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        ## If the control comes here that means this is the first execution.
        data <- x$get()
        ##Here is were we are acually inversing the matrix
        m <- solve(data, ...)
        x$setinv(m)
        m
}
