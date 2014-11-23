## Functions to take in a matrix and store the inverse of the matrix in the cache

## Below function takes the matrix as a parameter and creates a list of functions
## get, set, getInverse and setInverse 

makeCacheMatrix <- function (x = matrix())
{
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) m <<- solvxe
        getInverse <- function() m
        
        list (set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## The below function gets the inverse if it is already available in the cache else
## solves the matrix to get the inverse, stores it into the cache and returns it

cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        if(!is.null(m)) {
                message("Getting cached Inverse Matrix ")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInverse(m)
        m
}