instance Monand (Either e) where
    Right m >>= k = k m
    Left e >>= _ = Left e

Right m >>= k = m
k m = k m

Left e >>= _ = Left e
Left e _ = Left e
Left e = Left e

instance Monad []  where
	xs >>= f = [y | x <- xs, y <- f x]
    xs >>= f = [y | y <- f xs]
    f xs = f xs

instance Monand ((->) r) where
    f >>= k = \ r -> k (f r) r
    f >>= k = \r -> k (f r) r
    k f = \r -> k (f r) r
    k f = \r k (f r) r
    k f = k f

instance Monoid a => Monad ((,) a) where
	(u, a) >>= k = case k a of
		(v, b) -> (u <> v, b)

    (u, a) >>= k = k (u, a)
    k (u, a) = k (u, a)
