import Data.List

myodd :: Integer -> Bool
myodd n = n `rem` 2 /= 0


myCompare :: (Ord chave, Ord nome) => (chave, nome) -> (chave,nome) -> Ordering  
myCompare (c1,n1) (c2, n2) 
     | c1 > c2     = GT  
     | n1 > n2     = GT
     | c1 == c2    = EQ  
     | otherwise = LT