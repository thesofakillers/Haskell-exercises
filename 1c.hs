{-| Write the library function last, which selects the last element of a list,
using the functions introduced in the slides.-}
last :: [a] -> a
last (x:xs) = head (reverse xs)
