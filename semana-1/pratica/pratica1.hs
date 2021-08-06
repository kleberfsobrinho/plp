ajudaKlebinho :: Float -> Float -> Float -> String
ajudaKlebinho mesada item parcelas  |  valorParcela > 0.4*mesada = "Compra negada"
                                    | otherwise = "Compra liberada"
                                    where valorParcela = item/parcelas

main :: IO ()
main = do
    mesada <- getLine
    item <- getLine
    parcelas <- getLine
    let output = ajudaKlebinho (read mesada) (read item) (read parcelas)
    print output