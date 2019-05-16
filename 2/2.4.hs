{-
tail returns the tail of a list, it raises an exception if applied to the
empty list, []
Define a function safetail which maps the empty list to itself,
and otherwise behaves like tail.
Do this in three ways:
-}
--a) using a conditional expression;
safetail :: [a] -> [a]
safetail xs = if null xs then [] else drop 1 xs

--b) using guard expressions;
safetail' :: [a] -> [a]
safetail' xs | null xs   = []
             | otherwise = drop 1 xs

--c) using pattern matching
safetail'' ::  [a] -> [a]
safetail '' [] = []
safetail'' (_:xs) = xs
