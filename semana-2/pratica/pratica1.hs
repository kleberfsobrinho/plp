criptografia :: [Int] -> [Int]
criptografia x = passoDois (passoUm x 1)

passoUm :: [Int] -> Int -> [Int]
passoUm [] _ = []
passoUm (x:xs) y = (x+y) : passoUm xs (y+1)

passoDois :: [Int] -> [Int]
passoDois [] = []
passoDois (x:y:xs) = x^2 : 2^y : passoDois xs
passoDois (x:xs) = x^2 : passoDois xs

main :: IO ()
main = do
    lista <- getLine 
    let output = criptografia (read lista)
    print output