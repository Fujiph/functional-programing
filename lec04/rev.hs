join ([],[]) = []
join ((x:xs),(y:ys)) = (x:xs) ++ (y:ys)

rev [] = []
rev (x:xs) = join (rev xs, [x])
