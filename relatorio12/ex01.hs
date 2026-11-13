data Cafe = Cafe String Double Int

descrever :: Cafe -> String 
descrever (Cafe nome preco intensidade) = nome ++ " - " ++ show preco ++ " - " ++ show intensidade

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
    | intensidade >= 8 = "Forte"
    | intensidade >= 5 = "Equilibrado"
    | otherwise = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido leite (Cafe _ preco _) = 
    if leite == True
        then preco + 2.0
        else preco

primeiroCafe :: [Cafe] -> Cafe
primeiroCafe (x:_) = x

main :: IO ()
main = do
    let cafes = [ Cafe "Preto" 3.0 9
                , Cafe "Capuccino" 5.5 6
                , Cafe "Descafeinado" 4.0 1
                ]
    let pedido = primeiroCafe cafes

    mapM_ putStrLn (map descrever cafes)
    print(precoDoPedido False pedido)
    print(precoDoPedido True pedido)