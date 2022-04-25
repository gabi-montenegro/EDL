l1 :: [[Int]]
l1 = [[2,2,3], [1,0,0], [2,-16,-18]]

calcula :: Int -> Int -> Int ->  [Int]


calcula a b c = if delta < 0 then [] else if delta == 0 then [z] else [r1,r2] 
                where r1 = (- b + (floor (raizQuadrada))) `div` (2*a)
                      r2 = (- b - (floor (raizQuadrada))) `div` (2*a)
                      z = -b `div` (2*a)
                      deltaFloat =  fromIntegral delta :: Float
                      delta = b * b - (4 * a * c)
                      raizQuadrada = sqrt deltaFloat
    

raizes = map (\[a,b,c] -> calcula a b c) l1

