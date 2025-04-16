main :: IO ()
nome :: String -> String
nome nm =
  if nm == "Jhuan" || nm == "jhuan"
    then "Como vai as aulas de Haskell?"
    else "Oi " ++ nm
main = do
  putStrLn "Qual seu nome?"
  name <- getLine
  putStrLn (nome name)
