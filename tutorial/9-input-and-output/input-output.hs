-- main = putStrLn "hello, world"

main = do
    putStrLn "Hello, what's your name?"
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")

{- PONTO DE PARADA
ghci> putStrLn "HEEY"  
HEEY -}