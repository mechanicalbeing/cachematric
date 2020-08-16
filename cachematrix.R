## function makeCacheMatrix provides a list of functions and saves the inverse of 
## the matrix, function cachesolve checks if the inverse of the matrix is present
## in cache(m) and prints it and if not then calculates it and save the inverse in m through setin function
 

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  get<-function()x
  setin<-function(mat)m<<-mat
  getin<-function()m
  list(get=get,setin=setin,getin=getin)

}


## This functions checks if the inverse of the rquired matrix is already present and if its present then it prints it if not it calculates it 

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
