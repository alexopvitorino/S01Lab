pesoMaximo :: Double
pesoMaximo = 10.0

data Encomenda = Encomenda { 
  destinatario :: String, 
  peso :: Double, 
  frete :: Double 
}

descrever :: Encomenda -> String
descrever enc = "Para: " ++ destinatario enc ++ " | Peso: " ++ show (peso enc) ++ "kg | Frete: R$ " ++ show (frete enc)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encs = filter (\e -> peso e <= pesoMaximo) encs

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encs = sum (map frete encs)

main :: IO ()
main = do
  let listaEncs = [
        Encomenda "Ursula" 5.0 20.0,
        Encomenda "Osono" 12.0 45.0,
        Encomenda "Tombo" 3.0 15.0,
        Encomenda "Madame" 15.0 50.0 
        ]

  putStrLn "--- Todas as encomendas ---"
  mapM_ putStrLn (map descrever listaEncs)

  let permitidas = cabemNaVassoura listaEncs
  putStrLn "\n--- Encomendas que cabem na vassoura ---"
  mapM_ putStrLn (map descrever permitidas)

  putStrLn "\nTotal de fretes recebido:"
  print (totalDeFretes permitidas)
