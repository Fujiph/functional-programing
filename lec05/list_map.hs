list_map _ [] = []
list_map y (x:xs) = y x : list_map y xs