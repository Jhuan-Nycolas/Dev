nums :: [Int]
nums = [1, 2, 3, 4, 5]

fruits :: [String]
fruits = ["Maça", "Abacate", "Tomate", "Kiwi", "Uva"]

duble :: [Int] -> [Int]
duble = map (* 2)

numsdubled = duble nums

foreach :: [any] -> any
foreach = map (const putStrLn . show)

main :: IO ()
main = do
  foreach numsdubled
