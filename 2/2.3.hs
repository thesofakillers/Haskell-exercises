{- Write a function to return a tuple of the first and seventh elements of a
list. You can assume that the list contains at least seven elements. -}
take17 :: [a] -> (a, a)
take17 (x:xs) = (x, xs!!5)
