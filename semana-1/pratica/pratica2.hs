cedulas :: Int -> Int
cedulas x = cedulasRec x 0

cedulasRec :: Int -> Int -> Int
cedulasRec 0 y = y
cedulasRec x y | x >= 100 = cedulasRec (x-100) (y+1)
            | x >= 50 = cedulasRec (x-50) (y+1)
            | x >= 20 = cedulasRec (x-20) (y+1)
            | x >= 10 = cedulasRec (x-10) (y+1)
            | x >= 5 = cedulasRec (x-5) (y+1)
            | x >= 2 = cedulasRec (x-2) (y+1)
            | otherwise = cedulasRec (x-1) (y+1)

main :: IO ()
main = do
    value <- getLine
    let output = cedulas (read value)
    print output