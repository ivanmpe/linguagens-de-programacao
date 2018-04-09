safehead :: [a] -> Maybe a
safehead [] = Nothing
safehead (x:_) = Just x