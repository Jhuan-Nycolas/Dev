-- foreachStr :: (Show a) => [a] -> IO ()
-- foreachStr (head : body) = do
--  putStrLn head
--  foreachStr body
--
-- foreach :: (Show a) => [a] -> Bool -> IO ()
-- foreach (head : body) containsStr = do
--  if containsStr
--    then
--      foreachStr [head, body]
--    else
--      print head
--
--  foreach body containsStr

foreach :: (Show a) => [a] -> Int -> IO ()
foreach [] n = print ""
foreach (head : body) counter = do
  putStrLn "Itr " ++ show counter ++ ": " ++ show head

  foreach body counter
