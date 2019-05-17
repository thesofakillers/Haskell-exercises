-- define a helper function merge that merges two already sorted lists.
merge :: Ord a => [a] -> [a] -> [a]
merge [] xs = xs
merge xs [] = xs
merge (x:xs) (y:ys)
  | x <= y    = x : merge xs (y:ys)
  | otherwise = y : merge ys (x:xs)

-- now implement merge sort itself
{- It might be useful to use a helper function which splits a list into two
halves whose lengths differ by at most one-}
halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

mergeSort :: Ord a => [a] -> [a]
mergeSort[] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort half1) (mergeSort half2)
  where (half1, half2) = halve xs
