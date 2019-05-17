{-
Write a function compress :: Eq a => [a] -> [a] that eliminates consecutive
duplicate elements of a list. The order of the list should be left otherwise
unchanged.
-}
compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:y:xs)
  | x == y       = compress(y:xs)
  | otherwise    = x : compress(y:xs)
