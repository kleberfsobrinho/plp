-- guards (guardas) são uma forma de testar se uma (ou mais) propriedades são verdadeiras ou falsas.

bmiTell :: (RealFloat a) => a -> String  
bmiTell bmi  
    | bmi <= 18.5 = "Você esta abaixo do peso!"  
    | bmi <= 25.0 = "Supostamente você esta normal. Pfff, aposto que você é feio!"  
    | bmi <= 30.0 = "Você esta acima do peso!"  
    | otherwise   = "Você está em estágio de obesidade!"

max' :: (Ord a) => a -> a -> a  
max' a b  
    | a > b     = a  
    | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering  
a `myCompare` b  
    | a > b     = GT  
    | a == b    = EQ  
    | otherwise = LT

-- where

bmiTell' :: (RealFloat a) => a -> a -> String  
bmiTell' weight height  
    | weight / height ^ 2 <= 18.5 = "Você esta abaixo do peso!"  
    | weight / height ^ 2 <= 25.0 = "Supostamente você esta normal. Pfff, aposto que você é feio!"  
    | weight / height ^ 2 <= 30.0 = "Você esta acima do peso."  
    | otherwise = "Você está em estágio de obesidade!"

bmiTell'' :: (RealFloat a) => a -> a -> String  
bmiTell'' weight height  
    | bmi <= 18.5 = "Você esta abaixo do peso!"  
    | bmi <= 25.0 = "Supostamente você esta normal. Pfff, aposto que você é feio!"  
    | bmi <= 30.0 = "Você esta acima do peso."  
    | otherwise = "Você está em estágio de obesidade!"
    where bmi = weight / height ^ 2

{-
where bmi = weight / height ^ 2  
      (skinny, normal, fat) = (18.5, 25.0, 30.0)  
-}

initials :: String -> String -> String  
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."  
    where (f:_) = firstname  
          (l:_) = lastname

calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis xs = [bmi w h | (w, h) <- xs]  
    where bmi weight height = weight / height ^ 2 

---------------------------------------------------

cylinder :: (RealFloat a) => a -> a -> a  
cylinder r h = 
    let sideArea = 2 * pi * r * h  
        topArea = pi * r ^2  
    in  sideArea + 2 * topArea

{-
ghci> [let square x = x * x in (square 5, square 3, square 2)]  
[(25,9,4)]

ghci> (let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)  
(6000000,"Hey there!")
-}