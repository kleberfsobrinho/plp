paresEntre :: Int -> Int -> [Int]
paresEntre x y = [z | z <- [x..y], even z]