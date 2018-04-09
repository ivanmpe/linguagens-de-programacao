flat :: [[a]]  ->  [a]
flat xss = foldr (++) [] xss


gastoEmpresa :: [[Float]] -> Float
gastoEmpresa xss = sum (flat xss)