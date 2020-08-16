makeCacheMatrix<-function(x){
  m<-NULL
  get<-function()x
  setin<-function(mat)m<<-mat
  getin<-function()m
  list(get=get,setin=setin,getin=getin)
}
cacheSolve<-function(x){
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