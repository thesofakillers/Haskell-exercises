-- b)
-- Fix syntax errors in this program:
{-|
N = a 'div' length xs
  where
      a = 10
    xs = [1, 2, 3, 4, 5]
-}
n = a `div` length xs
  where
    a = 10
    xs = [1, 2, 3, 4, 5]

-- c)
{-| Write the library function last, which selects the last element of a list,
using the functions introduced in the slides.-}
last' :: [a] -> a
last' xs = head (reverse xs)

-- d)
-- Can you think of another definition?
last'' :: [a] -> a
last'' xs = xs !! (length xs - 1)

-- e)
{-| Write the library function init, which removes the last element from a list,
 in two different ways.-}
-- first way
init' :: [a] -> [a]
init' xs = reverse (drop 1 (reverse xs))
-- second way
init'' :: [a] -> [a]
init'' xs = take (length xs-1) xs
