foldl_byr f y xs = foldr step id xs y
    where step x g a = g (f a x)