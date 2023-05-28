import Data.Array.IO

main :: IO ()
main = do
  putStrLn "Anzahl der Elemente im Array:"
  n <- readLn :: IO Int
  
  putStrLn "Werte der Elemente im Array (kommasepariert eingeben):"
  input <- getLine
  let values = map read (splitByComma input) :: [Int]
  
  arr <- newListArray (0, n-1) values :: IO (IOArray Int Int)
  
  unsortedArray <- showArray arr
  putStrLn $ "Das unsortierte Array ist " ++ unsortedArray
  
  quickSort arr 0 (n-1)
  
  sortedArray <- showArray arr
  putStrLn $ "Das sortierte Array ist " ++ sortedArray

splitByComma :: String -> [String]
splitByComma "" = []
splitByComma str = let (before, remainder) = span (/= ',') str
                   in before : case remainder of
                                [] -> []
                                (_:xs) -> splitByComma xs

quickSort :: IOArray Int Int -> Int -> Int -> IO ()
quickSort arr start end
  | start < end = do
    pIndex <- partition arr start end
    quickSort arr start (pIndex - 1)
    quickSort arr (pIndex + 1) end
  | otherwise = return ()

partition :: IOArray Int Int -> Int -> Int -> IO Int
partition arr start end = do
  pivot <- readArray arr end
  let loop i pIndex
        | i < end = do
          x <- readArray arr i
          if x <= pivot
            then do
              swap arr i pIndex
              loop (i+1) (pIndex+1)
            else loop (i+1) pIndex
        | otherwise = do
          swap arr pIndex end
          return pIndex
  loop start start

swap :: IOArray Int Int -> Int -> Int -> IO ()
swap arr x y = do
  temp <- readArray arr x
  writeArray arr x =<< readArray arr y
  writeArray arr y temp

showArray :: IOArray Int Int -> IO String
showArray arr = do
  elems <- getElems arr
  return (show elems)
