myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x:xs) = f x : myMap f xs

--let square x = (x*x)
--myMap square [2, 3, 5, 7]