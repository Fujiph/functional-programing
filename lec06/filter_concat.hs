filter_concat :: (t0 a0 -> Bool) -> [[a1]] -> t
filter_concat _ [] = []
filter_concat pred (x:xs)
  | pred x    = x : filter_concat pred xs
  | otherwise = filter_concat pred xs

-- filter_concat _ [] = []
-- filter_concat pred (x:xs) = filter pred [x] ++ xs
