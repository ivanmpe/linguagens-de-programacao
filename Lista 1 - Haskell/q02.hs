remove :: Int-> [a] -> [a]
remove x xs = (take x xs) ++ (drop (x+1) xs)