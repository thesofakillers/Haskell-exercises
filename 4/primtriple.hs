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


-- 2)
{-
write a function that generates a triple from a 2-element list using
a = m^2 − n^2
b = 2mn
c = m^2 + n^2
-}
pythTriple :: [Int] -> (Int, Int, Int)
pythTriple (m:n:[]) = (m^2 - n^2, 2*m*n, m^2 + n^2)


-- 3)
{-
the main part, generating the tree of all these (m, n) pairs.
-}
treeGen :: [[Int]] -> [[Int]]
treeGen mns = hs ++ treeGen hs
  where hs = concatMap next mns
        next mn = zipWith mult generators (repeat mn)
        generators = [[[2, -1],
                       [1, 0]],
                      [[2, 1],
                       [1, 0]],
                      [[1, 2],
                       [0, 1]]]

-- 4)
{-
Lastly, create the infinite list of pythagorean triples by mapping pythTriple
over the list of (m, n) pairs obtained from treeGen,
starting from (m, n) = (2, 1).
-}
pyths :: [(Int, Int, Int)]
pyths = map pythTriple (mn : treeGen [mn])
  where mn = [2, 1]
