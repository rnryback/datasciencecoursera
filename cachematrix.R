## Write a short comment describing this function:creates a matrix and stores it in cache

mkcmatrix <- function(a = matrix()) {
m<-NULL
set<-function(b){
        a<<-b
        m<<-NULL
                }
get<-function()a
setinv <- function(solve) m<<- solve 
getinv <- function() m
list(set=set,get=get,setinv=setinv,getinv=getinv)
                                        }


## Write a short comment describing this function:using the matrix created with the previous function,
## calculates the inverse (checking before if the calculation has been made)

csolve <- function(a, ...) {
        m<-a$getinv()
        if(!is.null(m)){
                message("work in progress")
                return(m)
                        }
data<-a$get()
m<-solve(data,...)
a$setinv(m)
}
