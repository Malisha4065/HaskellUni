module Main where

import Text.Printf (printf)

solveQuadratic :: Double -> Double -> Double -> (Double, Double)
solveQuadratic a b c =
    let discriminant = b ** 2 - 4 * a * c
        sqrtDiscriminant = sqrt discriminant
        denominator = 2 * a
        root1 = (-b + sqrtDiscriminant) / denominator
        root2 = (-b - sqrtDiscriminant) / denominator
    in (root1, root2)

main :: IO ()
main = do
    -- Example 1: An equation with two real roots (x^2 - 3x + 2 = 0)
    let a1 = 1.0
    let b1 = -3.0
    let c1 = 2.0
    let (r1, r2) = solveQuadratic a1 b1 c1

    putStrLn "Quadratic Equation Solver"
    putStrLn "-------------------------"
    printf "Equation: %.1fx^2 + (%.1f)x + %.1f = 0\n" a1 b1 c1
    printf "The roots are: (%.2f, %.2f)\n\n" r1 r2

    -- Example 2: An equation with complex roots (x^2 + 2x + 5 = 0)
    let a2 = 1.0
    let b2 = 2.0
    let c2 = 5.0
    let (r3, r4) = solveQuadratic a2 b2 c2

    printf "Equation: %.1fx^2 + %.1fx + %.1f = 0\n" a2 b2 c2
    -- We use 'show' here to properly display NaN if the roots are complex.
    printf "The roots are: (%s, %s)\n" (show r3) (show r4)
    putStrLn "(Note: NaN indicates complex roots as the discriminant is negative)"