## Funkcja liczy macierz odwrócon¹

## Oblicza macierz specjaln¹

makeCacheMatrix <- function(macierz = matrix()){
	macierz_policz <<- matrix()
	macierz_odw <<- matrix()
	set_matrix_inv <- function(macierz) macierz_odw <<- solve(macierz)
	get_matrix_inv <- function() macierz_odw
	set_matrix <- function(macierz) macierz_policz <<- macierz
	get_matrix <- function() macierz_policz
	list(set_matrix = set_matrix, get_matrix = get_matrix,
						set_matrix_inv = set_matrix_inv,
						get_matrix_inv = get_matrix_inv)
}

## Liczy macierz odwrócon¹

cacheSolve <- function(mm){
	macierz_policz <- x$get_matrix()
	macierz_odw <- x$get_matrix_inv()
	if(identical(macierz_policz, mm) && !is.na(macierz_odw)) {
		message("Getting cached data...")
		macierz_odw	}
	else{
		message("Computing inverse...")
		x$set_matrix_inv(mm)
		x$set_matrix(mm)
		macierz_odw <- x$get_matrix_inv()
		macierz_policz <- x$get_matrix()
		macierz_odw
	}
}

##przyk³adowy program
a<-matrix(, 2, 2)
a[1,1] = 49
a[1,2] = 27
a[2,1] = 11
a[2,2] = 100
x<-makeCacheMatrix(a)
cacheSolve(a)

