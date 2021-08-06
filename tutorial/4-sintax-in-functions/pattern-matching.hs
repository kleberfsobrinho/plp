-- Pattern matching consiste na pesquisa por padrões em determinados dados e, caso tenha sucesso, fazer algo com ele.

lucky :: (Integral a) => a -> String
lucky 7 = "SETE! BINGO!"
lucky x = "Desculpe, tente novamente!"

sayMe :: (Integral a) => a -> String  
sayMe 1 = "Um!"  
sayMe 2 = "Dois!"  
sayMe 3 = "Três!"  
sayMe 4 = "Quatro!"  
sayMe 5 = "Cinco!"  
sayMe x = "Não está entre 1 e 5"

factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1)

-- function
charName :: Char -> String  
charName 'a' = "Albert"  
charName 'b' = "Broseph"  
charName 'c' = "Cecil"

-- output
{-
ghci> charName 'a'  
"Albert"  
ghci> charName 'b'  
"Broseph"  
ghci> charName 'h'  
"*** Exception: tut.hs:(53,0)-(55,21): Non-exhaustive patterns in function charName  
-}

-- Without pattern matching
addVectors1 :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors1 a b = (fst a + fst b, snd a + snd b) 

-- With pattern matching
addVectors2 :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors2 (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-----------------------------------------------------

first :: (a, b, c) -> a  
first (x, _, _) = x  
  
second :: (a, b, c) -> b  
second (_, y, _) = y  
  
third :: (a, b, c) -> c  
third (_, _, z) = z 

-- _ significa o mesmo que em compreensão de listas. Se o compilador não deve se importar com o que há ali, usamos o _.

{-
ghci> let xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]  
ghci> [a+b | (a,b) <- xs]  
[4,7,6,8,11,4]
-}

{- As prórias listas podem ser usadas em pattern matching. Você pode casar um padrão com uma lista vazia [] ou qualquer padrão que involva : e uma lista vazia. Sabendo que [1,2,3] é apenas um açucar sintático para 1:2:3:[], você também pode utilizar o padrão original. Uma pattern como x:xs irá colocar a cabeça de uma lista em x o resto dela em xs, ainda que o único elemento em xs seja uma lista vazia. -}

-----------------------------------------------------

head' :: [a] -> a  
head' [] = error "Proibido chamar head em uma lista vazia, amador!"  
head' (x:_) = x

tell :: (Show a) => [a] -> String  
tell [] = "A lista esta vazia"  
tell (x:[]) = "A lista tem apenas um elemento: " ++ show x  
tell (x:y:[]) = "A lista tem dois elementos: " ++ show x ++ " e " ++ show y  
tell (x:y:_) = "Esta lista esta longa demais. Veja os dois primeiros elementos: " ++ show x ++ " e " ++ show y

length' :: (Num b) => [a] -> b  
length' [] = 0  
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a  
sum' [] = 0  
sum' (x:xs) = x + sum' xs

-----------------------------------------------------

capital :: String -> String  
capital "" = "String vazia, oops!"  
capital all@(x:xs) = "A primeira letra de " ++ all ++ " é " ++ [x]
