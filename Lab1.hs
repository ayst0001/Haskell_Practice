module Lab1 (subst, interleave, unroll) where

-- The implementation of subst function
-- checking from the head, substitute when needed
subst :: Eq t => t -> t -> [t] -> [t]
subst _ _ [] = []
subst a b (x:xs) = 
	if (a == x)
		then (b:subst a b xs)
	else (x:subst a b xs)
	

-- The implementation of interleave function
-- All patterns mast be matched, to avoid boundary error
interleave :: [t] -> [t] -> [t]
interleave [][] = []
interleave (a:as) [] = a:interleave as []
interleave [] (b:bs) = b:interleave [] bs
interleave (x:xs) (y:ys) = x:interleave (y:ys) xs

-- The implementation of unroll method
unroll :: Int -> [a] -> [a]
unroll n sample = take n (cycle sample)