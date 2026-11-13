data Esboco = Esboco 
    { titulo  :: String
    , tecnica :: String
    , horas   :: Int
    }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "O caderno esta vazio."
esbocoMaisRecente (e:_) = "Mais recente: " ++ titulo e ++ " (" ++ tecnica e ++ ")"

contaEsbocos :: [Esboco] -> Int
contaEsbocos [] = 0
contaEsbocos (_:xs) = 1 + contaEsbocos xs

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:xs) = horas e + horasDesenhando xs

main :: IO ()
main = do

    let caderno1 = [ Esboco "Inatel" "Nanquim" 4
                   , Esboco "Cachorro Caramelo" "Grafite" 3
                   , Esboco "Soned" "Carvao" 5
                   ]

    putStrLn (esbocoMaisRecente caderno1)
    putStrLn ("Numero de esboços: " ++ show (contaEsbocos caderno1))
    putStrLn ("Total de horas: " ++ show (horasDesenhando caderno1))

    putStrLn (esbocoMaisRecente [])

    let novoEsboco = Esboco "Festa da Cidade" "Nanquim" 2
    let caderno2 = novoEsboco : caderno1

    putStrLn "Caderno 2:"
    putStrLn (esbocoMaisRecente caderno2)
    putStrLn ("Numero de esboços no Caderno 2: " ++ show (contaEsbocos caderno2))

    putStrLn (esbocoMaisRecente caderno1)
    putStrLn ("Numero de esboços no Caderno 1: " ++ show (contaEsbocos caderno1))

    --putStrLn (titulo (head[]))