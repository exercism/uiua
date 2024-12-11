~ "palindrome-products.ua" ~ Largest Smallest

# Find the smallest palindrome from single digit factors
Expected ← [1_1_1]
⍤⤙≍ Expected Smallest 1 9

# Find the largest palindrome from single digit factors
Expected ← [9_1_9 9_3_3]
⍤⤙≍ Expected Largest 1 9

# Find the smallest palindrome from double digit factors
Expected ← [121_11_11]
⍤⤙≍ Expected Smallest 10 99

# Find the largest palindrome from double digit factors
Expected ← [9009_91_99]
⍤⤙≍ Expected Largest 10 99

# Find the smallest palindrome from triple digit factors
Expected ← [10201_101_101]
⍤⤙≍ Expected Smallest 100 999

# Find the largest palindrome from triple digit factors
Expected ← [906609_913_993]
⍤⤙≍ Expected Largest 100 999

# Find the smallest palindrome from four digit factors
Expected ← [1002001_1001_1001]
⍤⤙≍ Expected Smallest 1000 9999

# Find the largest palindrome from four digit factors
Expected ← [99000099_9901_9999]
⍤⤙≍ Expected Largest 1000 9999

# # Empty result for smallest if no palindrome in the range
# Expected = (None_[]
# ⍤⤙≍ Expected Smallest 1002 1003

# # Empty result for largest if no palindrome in the range
# Expected = (None_[]
# ⍤⤙≍ Expected Largest 15 15

# # Error result for smallest if min is more than max
# (fun () -> smallest 10000 1 |> ignore) |> should throw typeof<System.ArgumentException>

# # Error result for largest if min is more than max
# (fun () -> largest 2 1 |> ignore) |> should throw typeof<System.ArgumentException>
