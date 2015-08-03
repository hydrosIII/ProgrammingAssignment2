## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


#### This function 
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
### clear cache of the old function
    
            set <- function(y) {
                    x <<- y
                    m <<- NULL
                }

    ### define the function to get the value of the inverse-
    get <- function() x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m

    ## a list to return the functions contained in the first function
    
            list(set = set, get = get,
                 setinverse = setinverse,
                 getinverse = getinverse)
    }

    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

### calls the function predefined in the previous function to get the inverse.
m <- x$getInverse()

## if there is a cache, return it
if(!is.null(m)) {
    message("getting cached data")
    return(m)
}

#if not, call the get function to calculate the inverse of the matrix

data <- x$get()
m <- solve(data, ...)
x$setInverse(m)  ## cache this result using predefined function
m

}
