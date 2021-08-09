calculo :: Int -> Int
calculo x   | x <= 0 = 0
            | otherwise = transformaLista [1..(x+1)] + calculo (x-1)

transformaLista :: [Int] -> Int
transformaLista [] = 0
transformaLista x = sum (map (^2) (init x))

main :: IO ()
main = do
    valor <- getLine
    let output = calculo (read valor)
    print output
