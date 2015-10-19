# The purose these two functions is to enable caching and retrive the cached data
# makeCacheMatrix function takes a matrix as its input and creates a cache for the inverse of that matrix
# cacheSolve function retives the stored value of matrix, calculates the inverse and stores in the
# cache provided by makeCacheMatrix. A set of functions are provided by makeCacheMatrix to store and retrive
# the matrix and its inverse


## makeCacheMatrix
## Parameters : matrix x
# Returns: List of 4 functions:
    # - set_matrix: sets a matrix to a variable x (free variable w.r.t set_matrix())
    # - get_matrix: gets the value stored in the x
    # - set_inv_matrix : sets the inverse of a matrix
    # - get_inv_matrix : gets the matrix set by set_matrix
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL

  set_matrix <- function(matrix) {
    x <<- matrix
    inv <<- NULL
  }

  get_matrix <- function() {
    return(x)
  }

  set_inv_matrix <- function(matrix){
    inv <<- matrix
  }

  get_inv_matrix <- function() {
    return(inv)
  }

  return(
    list(
      set = set_matrix,
      get = get_matrix,
      set_matrix = set_inv_matrix,
      get_matrix = get_inv_matrix
    )
  )
}


# This function finds the iverse of a matrix
# Input Parameters :
#    x : is a list of functions
# returns a the inverse of the matrix
# The inverse calculation is done the first time and the result is obtained from the cache

cacheSolve <- function(x, ...) {
  inv <- x$get_matrix()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mtrx <- x$get()
  inv <- solve(mtrx)
  x$set_matrix(inv)
  return(inv)
}
