## Test cases and results are given below

### Test Case 1
```
y <- matrix(c(1, 2, 3, 4), nrow=2, ncol=2)
source("cachematrix.R")
cache_obj <- makeCacheMatrix(y)
cacheSolve(cache_obj)
```

#### Result :
```
> cacheSolve(cache_obj)
        [,1] [,2]
  [1,]   -2  1.5
  [2,]    1 -0.5
> cacheSolve(cache_obj)
  getting cached data
       [,1] [,2]
  [1,]   -2  1.5
  [2,]    1 -0.5
```

### Test Case 2

```
y <- matrix(c(-2, 1, 1.5, -0.5), nrow=2, ncol=2)
source("cachematrix.R")
cache_obj <- makeCacheMatrix(y)
cacheSolve(cache_obj)
```

#### Result:
```
> cacheSolve(cache_obj)
     [,1] [,2]
[1,]    1    3
[2,]    2    4

> cacheSolve(cache_obj)
getting cached data
     [,1] [,2]
[1,]    1    3
[2,]    2    4
```
