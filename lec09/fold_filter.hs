fold_filter :: (a -> Bool) -> [a] -> [a]
fold_filter p []    = []
fold_filter p xs    = foldr (\x xs -> if p x then x:xs else xs ) [] xs