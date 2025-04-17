import Foreach

list :: [String]
list = ["S1", "S2ç", "S3"]

list2 :: [Int]
list2 = [1, 2, 3, 4]

main :: IO ()
main = do
  foreach list2 "String"
