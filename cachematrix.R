## function makeCacheMatrix provides a list of functions and save the inverse of 
## the matrix, function cachesolve checks if the inverse of the matrix is present
## in cache and prints and if not then calculates it


makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  get<-function()x
  setin<-function(mat)m<<-mat
  getin<-function()m
  list(get=get,setin=setin,getin=getin)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getin()
  if(!is.null(m)){
    message("returning cached inverse")
    return(m)
  }
  data<-x$get()
  mat<-solve(data)
  x$setin(mat)
  mat
  
}
