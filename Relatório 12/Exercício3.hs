data Esboco = Esboco { 
  titulo :: String, 
  tecnica :: String, 
  horas :: Int 
}

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "O caderno está vazio."
esbocoMaisRecente (e:_) = titulo e ++ " (" ++ tecnica e ++ ")"

contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:xs) = 1 + contarEsbocos xs

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:xs) = horas e + horasDesenhando xs

main :: IO ()
main = do
  let caderno = [
        Esboco "Monstro do pântano" "Nanquim" 4,
        Esboco "Ruínas Antigas" "Carvão" 6,
        Esboco "Retrato" "Grafite" 2
        ]
  
  putStrLn "--- Status do Caderno ---"
  putStrLn ("Mais recente: " ++ esbocoMaisRecente caderno)
  putStrLn ("Total de esboços: " ++ show (contarEsbocos caderno))
  putStrLn ("Horas desenhando: " ++ show (horasDesenhando caderno))

  putStrLn "\n--- Caderno Vazio ---"
  putStrLn (esbocoMaisRecente [])

  let cadernoNovo = Esboco "Dragão" "Aquarela" 5 : caderno

  putStrLn "\n--- Caderno Novo ---"
  putStrLn ("Mais recente (Novo): " ++ esbocoMaisRecente cadernoNovo)
  putStrLn ("Total de esboços (Novo): " ++ show (contarEsbocos cadernoNovo))
  
  putStrLn "\n--- Caderno Antigo (Imutável) ---"
  putStrLn ("Mais recente (Antigo): " ++ esbocoMaisRecente caderno)
  putStrLn ("Total de esboços (Antigo): " ++ show (contarEsbocos caderno))
