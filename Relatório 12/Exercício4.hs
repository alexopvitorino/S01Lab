data Etapa = NaFila | NoBanho | Concluido deriving (Show, Eq)

data Atendimento = Atendimento { 
  cliente :: String, 
  servico :: String, 
  valor :: Double, 
  etapa :: Etapa 
}

descrever :: Atendimento -> String
descrever at = "Cliente: " ++ cliente at ++ " | Servico: " ++ servico at ++ " | Status: " ++ show (etapa at)

concluir :: Atendimento -> Atendimento
concluir at = at { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado ats = sum (map valor (filter (\a -> etapa a == Concluido) ats))

main :: IO ()
main = do
  let original = [
        Atendimento "Deus do Rio" "Banho Herbal" 500.0 NoBanho,
        Atendimento "Espírito Rabanete" "Banho Comum" 150.0 NaFila,
        Atendimento "Sem Rosto" "Banquete e Banho" 900.0 NaFila
        ]

  let atualizada = [
        concluir (original !! 0),
        original !! 1,
        original !! 2
        ]

  putStrLn "--- Lista Original ---"
  mapM_ putStrLn (map descrever original)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado original))

  putStrLn "\n--- Lista Atualizada ---"
  mapM_ putStrLn (map descrever atualizada)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado atualizada))
