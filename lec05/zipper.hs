zipper a b = zipper_tail a b []

zipper_tail [] _ wev = wev
zipper_tail _ [] wev = wev
zipper_tail (x:xs) (y:ys) wev = zipper_tail xs ys (wev ++ [(x,y)])
