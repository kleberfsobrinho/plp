roots :: Float -> Float -> Float -> [Float]
roots a b c
    | delta > 0 = [x1, x2]
    | delta == 0 = [x1]
    | otherwise = []
    where 
        delta = b^2 - 4*a*c
        x1 = (-b + sqrt delta) / 2*a
        x2 = (-b - sqrt delta) / 2*a

