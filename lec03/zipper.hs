zipper' [] xs = []
zipper' ys [] = []
zipper' (x:xs) (y:ys) = (x, y) : zipper' xs ys