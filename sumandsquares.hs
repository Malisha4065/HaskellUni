-- Sum and Squares

-- ::IO() means this function performs input/output and returns "nothing useful"

sumAndSquares :: IO ()
sumAndSquares = do
    let numbers = [1..100]
    putStrLn $ "Numbers from 1 to 100: " ++ show numbers

    let divisible = [x | x <- numbers, x `mod` 3 == 0 || x `mod` 5 == 0]
    putStrLn $ "Numbers divisible by 3 or 5: " ++ show divisible

    let total = sum divisible
    putStrLn $ "Sum of divisible numbers: " ++ show total

    let totalSquares = sum (map (^2) divisible)
    putStrLn $ "Sum of squares of divisible numbers: " ++ show totalSquares

    putStrLn $ "Final Result as Tuple: (" ++ show total ++ ", " ++ show totalSquares ++ ")"

-- main the entrypoint
main :: IO ()
main = sumAndSquares -- Calling sumAndSquares from main