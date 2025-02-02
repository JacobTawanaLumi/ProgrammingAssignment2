## Put comments here that give an overall description of what your
## functions do

## Set values of the matrix
##get the values of the matrix
## set the value of the inverse
##get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        i<-NULL
        set<-function(y){
                x<<-y
                i<<-NULL
}
        

        
get<-function()x
        setinverse<-function(inverse) i<<-inverse
        getinverse<-function()i
        list(set=set,
             get=get,
             setinverse=setinverse,
             getinverse=getinverse)

}
        


## Retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}

##to Test the code run the following code

B <- matrix(c(1,2,3,4),2,2)
B1 <- makeCacheMatrix(B)
cacheSolve(B1)

##inverse returned after computation
