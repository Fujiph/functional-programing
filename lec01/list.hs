len [] = 0
len (x:xs) = len xs + 1

join ([],[]) = []
join ((x:xs),(y:ys)) = (x:xs) ++ (y:ys)