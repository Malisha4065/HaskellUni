module Main where

import Text.Printf (printf)

calculateCompountInterest :: Double -> Double -> Int -> Double
calculateCompountInterest p r n = p* (1 + r) ** fromIntegral n

main :: IO ()
main = do
    let principal = 1000.0
    let rate = 0.05
    let years = 10

    let finalAmount = calculateCompountInterest principal rate years

    putStrLn "Compound Interest Calculation:"
    printf "Principal Amount:     $%.2f\n" principal
    printf "Annual Interest Rate: %.2f%%\n" (rate * 100)
    printf "Number of Years:      %d\n" years
    putStrLn "---------------------------------"
    printf "Total Amount after %d years: $%.2f\n" years finalAmount