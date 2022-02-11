data Tree = Empty | Node Int Tree Tree deriving Show

isBST :: Tree -> Bool

isBST Empty = True
isBST (Node h leftSubtree rightSubtree) = f (<=h) leftSubtree && f (>=h) rightSubtree && isBST leftSubtree && isBST rightSubtree
   where
     f _ Empty = True
     f c (Node h leftSubtree rightSubtree) = c h && f c leftSubtree && f c rightSubtree

    -- leftSubtree rightSubtree