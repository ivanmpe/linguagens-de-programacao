take6 :: Int-> [Int] -> [Int]
take6 n ns = take n ns

sum6 :: [Int] -> Int
sum6 xs = (sum (take6 6 xs))