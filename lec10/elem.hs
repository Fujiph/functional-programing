elem' x [] = False
elem' x (y:ys)
    | x == y = True
    | otherwise = elem' x (ys)