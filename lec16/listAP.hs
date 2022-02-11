listAP :: [a -> b] -> [a] -> [b]
listAP [] _ = []
listAP _ [] = []
listAP (x:xs) y = fmap x y ++ listAP xs y

