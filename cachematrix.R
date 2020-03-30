## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##`makeCacheMatrix` creates a special object, which is
## a list containing a function to

##1.  set the value of the matrix (set)
##2.  get the value of the matrix (get)
##3.  set the value of the inverted matrix (setinv)
##4.  get the value of the inverted matrix (getinv)


makeCacheMatrix <- function(x = matrix()) {
				m_inv <- NULL
				set <- function(y){
					x <<- y
					m_inv << -NULL
				}
				get<-function()x
				setinv<-function(inv) m_inv <<- inv
				getinv<-function() m_inv
				list(set =s et, get = get,
					setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function
##The following function calculates the inversethe matrix,
created with the above function. However, it first checks to see if the
inverse has already been calculated. If so, it `get`s the inverse
from the cache and skips the computation. Otherwise, it calculates the inversion of
the data and sets the value of the invertion in the cache via the `setinv`
function.

cacheSolve <- function(x, ...) {
       			m_inv<-x$getinv()
				if(!isnull(m_inv)){
					message("getting cached data")
					return(m_inv)
				}
				data<-x$get()
				m_inv<-solve(data,...)
				x$setinv(m_inv)
				m_inv
	}
}
