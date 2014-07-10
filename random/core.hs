--------------------------------------------
--implement some common functions in haskell
--------------------------------------------

map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:rest) = f x : (map f rest)

foldr' :: (a -> a -> a) -> a -> [a] -> a 
foldr' func i (a:[]) =  func a i
foldr' func i (a:rest) = func a (foldr' func i rest)

zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (a:as) (b:bs) = [(a,b)] ++ (zip' as bs)

--testing
main = do
     print $ (map' (^2) [2,3,4]) == [4,9,16]
     print $ (foldr' (+) 0 [2,4,5]) == 11
     print $ (zip' [1,2] [3,4]) == ([(1,3),(2,4)])

       
