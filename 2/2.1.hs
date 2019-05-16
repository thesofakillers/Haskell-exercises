{- Write a function to return the penultimate (second to last) element of a
list. Assume that the list you will provided contains at least two elements.-}
myButLast :: [a] -> a
myButLast xs = (reverse xs)!!1
