partition p [] = ([], [])
partition p (x:xs)
  | p x       = (x:l, r)
  | otherwise = (l, x:r)
  where (l, r) = partition p xs

re_filter _ [] = []
re_filter f (x:xs) 
    | f x = fst(partition f xs)
    | otherwise = re_filter f xs

quicksort [] = []
quicksort (x:xs) = (quicksort a) ++ [x] ++ (quicksort b)
    where
        a = fst(partition (< x) xs)
        b = fst(partition (x >=) xs)