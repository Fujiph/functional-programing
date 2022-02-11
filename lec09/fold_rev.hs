foldl_rev [] = []
foldl_rev xs = foldl (\x y -> y:x) [] xs

foldr_rev [] = []
foldr_rev bs = foldr (\b g x -> g (b : x)) id bs []