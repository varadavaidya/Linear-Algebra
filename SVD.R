education.by.readership = matrix(c(5, 18, 19, 12, 3, 7, 46, 29, 40, 7, 2, 20, 39, 49, 16), 
           nrow = 5,
           
           dimnames = list(
             "Level of education" = c("Some primary", "Primary completed", "Some secondary", "Secondary completed", "Some tertiary"),
             "Category of readership" = c("Glance", "Fairly thorough", "Very thorough")))

O = education.by.readership / sum(education.by.readership)
E = rowSums(O) %o% colSums(O)
Z = (O - E) / sqrt(E)


SVD = svd(Z)

SVD$u %*% diag(SVD$d) %*% t(SVD$v)

variance.explained = prop.table(svd(Z)$d^2)
