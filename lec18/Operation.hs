newtype Operation a = Operation { getOperation :: a }
  deriving (Eq, Ord, Read, Show, Bounded)
instance Bool a => Monoid (Operation a) where
  mempty = Operation True
  (Operation x) <> (Operation y) = Operation (x&&y)

maybeBind :: Maybe a -> (a -> Maybe b) -> Maybe b
maybeBind m f = case m of
          Nothing -> Nothing
          Just x -> g x

eitherBind :: Either r a -> (a -> Either r b)
eitherBind x f =
    case x of
      left msg -> left msg
      Right v -> f x


