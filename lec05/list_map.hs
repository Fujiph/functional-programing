fold_map _ [] = []
fold_map y (x:xs) = y x : fold_map y xs