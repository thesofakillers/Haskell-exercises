{-
A triple (x, y, z) of positive integers is called pythagorean if x^2 +y^2 = z^2.
Using a list comprehension, define pyths :: Int -> [(Int, Int, Int)] that maps
an integer n to all such triples with components in [1..n]
-}
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, n) | y <- [1..n-1], x <- [1..y], x^2 + y^2 == n^2]
