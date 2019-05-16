-- Use pattern matching to extend your definition of shuffle to handle empty lists.
shuffle :: [a] -> [a]
shuffle [] = []
shuffle (x:xs) = xs ++ [x]
