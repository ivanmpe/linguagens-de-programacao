flat:: [[a]] -> [a]
flat [] = []
flat (x:xs) = x ++ flat xs