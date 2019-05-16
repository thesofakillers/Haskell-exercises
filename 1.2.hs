{-|Write a function shuffle that takes as an argument a non-empty list(i.e.you
may assume it contains at least one element), removes the first element and
appends it at the end. If your first attempt didn’t work, why not?-}
shuffle :: [a] -> [a]
shuffle (x:xs) = xs ++ [x]
{-| first attempt didn't work as i did not put `x` into a list, which is necessa
for the `++` operator-}
