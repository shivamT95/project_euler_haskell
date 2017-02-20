--11
--do it

--12
l = map truncate [ x*(x+1)/2 | x <- [1..]]
divisors n = 1 : filter ((==0) . rem n) [2 .. n `div` 2]
ans11 = map divisors l
