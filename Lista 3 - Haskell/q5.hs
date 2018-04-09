flat :: [[a]] -> [a]
flat xss = foldr (++) [] xss