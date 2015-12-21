## Does what it needs to do to complete the assignment I had to turn
## to the wider internet to complete instead of the course that I paid
## for as related to the lectures for the week.


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(matrix) m <<- matrix
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## Refers to variable by name in data frame with $. If M isn't NULL
## returns M.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- matrix(data, ...)
  x$setmatrix(m)
  m
}
