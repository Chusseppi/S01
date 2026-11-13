pesoMaximo :: Double
pesoMaximo = 25.5

-- pesoMaximo = 50.0

data Encomenda = Encomenda 
    { destinatario :: String
    , peso :: Double
    , frete :: Double
    }

descrever :: Encomenda -> String
descrever e = destinatario e ++ " - " ++ show (peso e)++ " - " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura  = filter (\x -> peso x <= pesoMaximo)

totalDeFretes :: [Encomenda] -> Double
totalDeFretes xs = sum (map frete xs)

main :: IO ()
main = do
    let encomendas = [ Encomenda "Lanchonete Chaves" 4.5 25.0
                     , Encomenda "Mundial Paes" 18.0 90.0
                     , Encomenda "Inatel" 10.0 60.0
                     , Encomenda "Brazza Pub" 22.0 150.0
                     ]

    mapM_ putStrLn (map descrever encomendas)

    let aceitas = cabemNaVassoura encomendas

    mapM_ putStrLn (map descrever aceitas)

    print (totalDeFretes aceitas)