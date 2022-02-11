done to the data:
data COp a = CVal Int a
    deriving (Show)

instance Functor COp where
  fmap f (CVal c v)
      = CVal (c+1) (f v)

class Functor f where
  fmap :: (a -> b) -> (f a -> f b)
instance Functor ((->) r) where  
    fmap f g = (\x -> f (g x)) 


