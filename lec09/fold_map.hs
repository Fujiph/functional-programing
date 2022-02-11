fold_map f []       = []
fold_map f xs   = foldr (\x xs -> (f x):xs) [] xs