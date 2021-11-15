zipper([],(x:xs)) = []
zipper((x:xs),[]) = []
zipper((x:xs),(y:ys)) = (x,y) : zipper(xs,ys)