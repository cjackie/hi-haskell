max33 :: Ord a => [a] -> a
max33 (a : x) | length x == 0 = a
              | a > max33 x = a
              | otherwise = max33 x

main = print (max33 [3, 4, 5, 4])
