data Tree a = Leaf
            | Node (Tree a) a (Tree a)

-- type Foldable :: (* -> *) -> Constraint
instance Foldable Tree where
    foldMap f Leaf = mempty
    foldMap f (Node l x r) = foldMap f l `mappend` f x `mappend` foldMap f r
    
    foldr f acc Leaf = acc
    foldr f acc (Node l x r) = foldr f (f x (foldr f acc r)) l