-- Listas são estruturas de dados homogêneas.

-- [/=] operador != em haskell

-- [++] operador utilizado para juntar listas

-- [:] operador para adicionar no início de uma lista [contra operador]

-- Observe que o operador [:] recebe um número e uma lista de números ou um caractere e uma lista de caracteres, enquanto o ++ recebe duas listas.

{-	Nota: [], [[]] e [[],[],[]] são coisas diferentes. O primeiro é uma lista vazia, o segundo é uma lista que contém uma lista vazia, o terceiro é uma lista que contém três listas vazias.	-}

-- [!!] operador para obter um elemento de uma lista pelo índice.

----------------------------------------------
-- head recebe uma lista e retorna o seu head.

-- tail recebe uma lista e retorna a sua "cauda".

-- last recebe uma lista e retorna o seu último elemento.

-- init recebe uma lista e retorna tudo com exceção do último elemento.

----------------------------------------------
-- length recebe uma lista e retorna o seu length (tamanho)

-- null verifica se a lista é vazia. Se for, então retorna True, senão retorna False.

-- reverse reverte uma lista.

-- take recebe um número e uma lista. Ele extrai a quantidade de elementos desde o início da lista.

-- drop funciona de forma similar, só que retira o número de elementos a partir do ínicio da lista.

-- maximum recebe uma lista de coisas que podem ser colocadas em algum tipo de ordem e retorna o seu maior elemento.

-- minimum retorna o menor.

-- sum recebe uma lista de números e retorna a sua soma.

-- product recebe uma lista de números e retorna o seu produto.

-- `elem` recebe alguma coisa e uma lista de coisas e nos diz se esta coisa é um elemento da lista. Geralmente é chamado como uma função infixa porque é mais fácil de ler dessa maneira.

----------------------------------------------
-- cycle recebe uma lista e gera ciclos infinitos dela.

-- repeat recebe um elemento e produz uma lista infinita dele. Isto é como o ciclo de uma lista com somente um elemento.

----------------------------------------------
{-Compressão de Listas-}

-- ghci> [x*2 | x <- [1..10]]

-- ghci> [x*2 | x <- [1..10], x*2 >= 12]

-- ghci> [x*2 | x <- [1..10], x*2 >= 12]

-- ghci> [ x | x <- [50..100], x `mod` 7 == 3]

{-ghci> [ x*y | x <- [2,5,10], y <- [8,10,11]]  
[16,20,22,40,50,55,80,100,110]-}

{-ghci> [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]  
[55,80,100,110]-}

----------------------------------------------
-- Tuplas

-- fst recebe um par e retorna seu primeiro componente.

-- snd recebe um par e retorna seu segundo componente. Surpresa!

{- Uma função legal que produz uma lista de pares: zip. Ela pega duas listas e então as comprimem juntamente em uma única lista juntando os elementos que casarem em pares. -}

----------------------------------------------
