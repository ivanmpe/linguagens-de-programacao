average xs = sum xs `div` length xs  
double x = x + x 
quadruple x = double(double x)

--Return last number of list
lastNumber xs = head (reverse xs)

init xs = reverse (tail (reverse xs ))

halve :: [a] -> ([a],[a])
halve xs = ( (take (length xs `div` 2) xs) , (drop (length xs `div` 2 ) xs) )

abss :: Int -> Int
abss n = if n >= 0 then n else -n


tamanho :: [a] -> Int
tamanho xs = sum [1 | _ <- xs]

factors :: Int -> [Int]
factors xs = [x | x <- [1..xs], xs `mod`  x == 0] 

primo :: Int -> Bool
primo x = if (tamanho (factors x) <=2 ) then True else False 

duplica :: [Int] -> [Int]
duplica xs = [2*x | x <-xs , x >= 3]