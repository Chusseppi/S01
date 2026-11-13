data Etapa = NaFila | NoBanho | Concluido
    deriving (Show, Eq)

data Atendimento = Atendimento 
    { cliente :: String
    , servico :: String
    , valor   :: Double
    , etapa   :: Etapa
    } deriving (Show)

descrever :: Atendimento -> String
descrever a = cliente a 
              ++ " | Serviço: " ++ servico a 
              ++ " | Valor: R$ " ++ show (valor a) 
              ++ " | Etapa: " ++ show (etapa a)

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado xs = sum (map valor (filter (\a -> etapa a == Concluido) xs))

main :: IO ()
main = do

    let atendimentosIniciais = [ Atendimento "Joao" "Banho de Ervas Mágicas" 150.0 NaFila
                               , Atendimento "Pedro" "Limpeza Profunda" 500.0 NoBanho
                               , Atendimento "Jose" "Banho Relaxante" 80.0 NaFila
                               ]

    let atendimentosAtualizados = [ head atendimentosIniciais
                                  , concluir (atendimentosIniciais !! 1)
                                  , last atendimentosIniciais
                                  ]

    mapM_ putStrLn (map descrever atendimentosIniciais)
    putStrLn $ "Total arrecadado na lista original: R$ " ++ show (arrecadado atendimentosIniciais)

    mapM_ putStrLn (map descrever atendimentosAtualizados)
    putStrLn $ "Total arrecadado na lista atualizada: R$ " ++ show (arrecadado atendimentosAtualizados)