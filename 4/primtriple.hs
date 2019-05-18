{-
we will generate the infinite list of all Pythagorean triples. In particular,
we will restrict ourselves to primitive triples using matrix generators
(see https://en.wikipedia.org/wiki/Tree_of_primitive_Pythagorean_triples).
-}

-- 1)
{-
Write a function which computes the result of multiplying a matrix
(represented as a list of lists) onto a vector (represented as a list).
You may find the functions zipWith and repeat helpful.
-}
mult :: [[Int]] -> [Int] -> [Int]
mult mat x = zipWith dot mat (repeat x)
  where dot xs ys = sum (zipWith (*) xs ys)
