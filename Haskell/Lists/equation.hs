l1 :: [[Int]]
l1 = [[2,-7,3], [2,2,1], [1,5,-14]]

calcula :: Int -> Int -> Int ->  [Float]


calcula a b c = if delta < 0 then [] else if delta == 0 then [z] else [r1,r2] 
                where r1 = (- (fromIntegral b) + raizQuadrada) / fromIntegral (2*a)
                      r2 = (- (fromIntegral b) - raizQuadrada) / fromIntegral(2*a)
                      z = - (fromIntegral b) / fromIntegral (2*a)
                      deltaFloat =  fromIntegral delta :: Float
                      delta = b * b - (4 * a * c)
                      raizQuadrada = sqrt deltaFloat
    

raizes = map (\[a,b,c] -> calcula a b c) l1

