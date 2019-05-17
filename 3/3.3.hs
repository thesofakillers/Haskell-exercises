{-
The scalar product of two lists of numbers of length n is given by the sum
of the products of the corresponding numbers
Write a function that uses a list comprehension to compute the scalar product
of two lists.
-}
scalarProduct :: Num a=> [a] -> [a] -> a
scalarProduct xs ys = sum [x * y | (x, y) <- zip xs ys]
