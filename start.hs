-- 1
ft x
    | x `mod` 3 == 0    = x
    | x `mod` 5 == 0    = x
    | otherwise     = 0
ans = sum ([ ft x | x <- [1..999] ])


-- 2
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
l = take 100 fibs
f2 x
   | x `mod` 2 == 0 && x < 4000000 = x
   | otherwise      = 0
ans2 = sum ([ f2 x | x <- l ] )


-- 3
--primeFactors 600851475143


-- 4
pal x = (show x) == (reverse (show x) )
l44 =  [(x,y) | x <- [100..999], y <- [100..999]]
l4 = map (\(x,y) -> (x*y) ) (l44)
ans4 = 	maximum (filter pal l4 )


-- 5
x = 2520*11*13*17*19*2


-- 6
squm x = x*(x+1)*(2*x+1)/6
smsq x = x*x*(x+1)*(x+1)/4
ans5 = truncate ((smsq 100) - (squm 100))



-- 9
l9 =  [(x,y,x^2+y^2) | x <- [1..999], y <- [1..999]]
chk (x,y,z) = x+y+ (sqrt z) == 1000
ans9 = filter chk l9
200*350*425

--10
foldl (+) 0 (takeWhile (< 2000000) primes)
