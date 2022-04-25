import Data.Char

l1 :: [[Int]]
l1 = [[2,2,3], [1,0,0], [2,-16,-18]]

calcula :: Int -> Int -> Int ->  [Int]
--calcula a b c delta = do
--    if delta < 0 
--          then []
--          else if delta == 0
--              then [-b / (2*a), _]  
--              else 
--                 [(-b + sqrt delta) / (2*a), (-b - sqrt delta) / (2*a)]

--semRaiz :: Int -> [Int]
--semRaiz d = []

--let toInt :: Float -> Int  
--toInt (x) = x 
--fromIntegral :: (Integral a, Num b) => a -> b

--toFloat :: Int -> Float 
--toFloat n = n


calcula a b c = if delta < 0 then [] else if delta == 0 then [z] else [r1,r2] 
                where r1 = (- b + (floor (raizQuadrada))) `div` (2*a)
                      r2 = (- b - (floor (raizQuadrada))) `div` (2*a)
                      z = -b `div` (2*a)
                      deltaFloat =  fromIntegral delta :: Float
                      delta = b * b - (4 * a * c)
                      raizQuadrada = sqrt deltaFloat
    

--int2float ns = [sqrt (fromIntegral x) | x <- ns]
{-calcula (a, b, c) 
    | delta < 0  = []
    | delta == 0 = [- b `div` (2*a)]
    |otherwise   = [- b + (sqrt deltaFloat) `div` (2*a), - b - (sqrt deltaFloat) `div` (2* a)] 
    where
        deltaFloat =  fromIntegral delta :: Float
        delta = b*b - (4*a*c)
-}

raizes = map (\[a,b,c] -> calcula a b c) l1

