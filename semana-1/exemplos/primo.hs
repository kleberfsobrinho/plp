ehPrimo :: Int -> Bool
ehPrimo 1 = False
ehPrimo x = proxDiv x 2 == x

proxDiv :: Int -> Int -> Int 
proxDiv x i = if mod x i == 0 then i
    else proxDiv x (i + 1)