data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " - R$ " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido comLeite (Cafe _ preco _) =
  if comLeite 
  then preco + 2.0 
  else preco

main :: IO ()
main = do
  let cafe1 = Cafe "Expresso Leblanc" 8.5 9
  let cafe2 = Cafe "Latte Suave" 12.0 6
  let cafe3 = Cafe "Descafeinado" 6.0 2

  putStrLn "--- Cafés do Dia ---"
  putStrLn (descrever cafe1 ++ " | Força: " ++ forca cafe1)
  putStrLn (descrever cafe2 ++ " | Força: " ++ forca cafe2)
  putStrLn (descrever cafe3 ++ " | Força: " ++ forca cafe3)

  putStrLn "\n--- Teste de Preço ---"
  putStrLn "Preço do Latte sem leite:"
  print (precoDoPedido False cafe2)
  putStrLn "Preço do Latte com leite:"
  print (precoDoPedido True cafe2)
