data BinaryTree a = 
    Empty
    | Node (BinaryTree a) a (BinaryTree a)
    | Leaf a
    deriving (Show)

btreeMap :: (a -> b) -> BinaryTree a -> BinaryTree b
btreeMap _ Empty = Empty
btreeMap f (Leaf a) = Leaf (f a)
btreeMap f (Node leftSubtree a rightSubtree) = Node (btreeMap f leftSubtree) (f a) (btreeMap f rightSubtree)

height :: Tree -> Integer
height (Node left x right) = 1 + max (height left) (height right)
