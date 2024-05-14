C <- matrix(c(2, 1, 4, 1, 2, 3, 4, 3, 2), 3, 3)
eig <- eigen(C)
eig$values 
eig$vectors 

trace_C <- sum(diag(C))
sum_eig <- sum(eig$values)
trace_C == sum_eig 




plot(0, 0, xlim = c(-1, 1), ylim = c(-1, 1), xlab = "x1", ylab = "x2", main = "Eigenvectors on a plane")
abline(h = 0, v = 0, lty = 2) 
arrows(0, 0, eig$vectors[1,1], eig$vectors[2,1], col = "blue", length = 0.1)
arrows(0, 0, eig$vectors[1,2], eig$vectors[2,2], col = "red", length = 0.1)




plot(0, 0, xlim = c(-1, 1), ylim = c(-1, 1), xlab = "x2", ylab = "x3", main = "Eigenvectors on a plane")
abline(h = 0, v = 0, lty = 2) 
arrows(0, 0, eig$vectors[2,1], eig$vectors[3,1], col = "blue", length = 0.1)
arrows(0, 0, eig$vectors[2,2], eig$vectors[3,2], col = "red", length = 0.1)



plot(0, 0, xlim = c(-1, 1), ylim = c(-1, 1), xlab = "x1", ylab = "x3", main = "Eigenvectors on a plane")
abline(h = 0, v = 0, lty = 2) 
arrows(0, 0, eig$vectors[1,1], eig$vectors[3,1], col = "blue", length = 0.1)
arrows(0, 0, eig$vectors[1,2], eig$vectors[3,2], col = "red", length = 0.1)