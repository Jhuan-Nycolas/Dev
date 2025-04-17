module Foreach where

foreach :: (Show a) => [a] -> String -> IO ()
foreach (head : body) tp = do
  if tp == "String"
    then
      putStrLn head
    else
      if tp == "Char"
        then
          putChar head
        else
          print head
