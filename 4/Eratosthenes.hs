-- implement Eratosthenes' sieve for finding prime numbers
sieve :: [Int] -> [Int]
sieve [] = []
-- requirement: list always starts with 2
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

primes :: [Int]
primes = sieve [2..]
