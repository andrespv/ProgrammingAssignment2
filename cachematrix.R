
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.


## This function creates a special "matrix" object that can cache its inverse. 
  
 makeCacheMatrix <- function(x = matrix()) {
 
         m <- NULL
         set<- function(y){
         x<<-y
         m<<-NULL
 }
 get<-function() x # function to return a matrix
 setmatrix<-function(solve) m<<-solve # function to set solve value
 getmatrix<-function() m 
 list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
 }
  
  
 ## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
  
 cacheSolve <- function(x, ...) {
 cacheSolve <- function(x, ...) 
 {
         ## Return a matrix that is the inverse of 'x'
         m<- x$getmatrix()
         if(!is.null(n))
         {
                 message("Get cache")
                 return(m)
         }    
         matrix<-x$get()
         m<-solve(matrix,...)
         x$setmatrix(m)
         m
 }
