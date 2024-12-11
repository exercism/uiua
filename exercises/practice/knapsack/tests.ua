~ "knapsack.ua" ~ MaximumValue

# no items
⍤⤙≍ 0 MaximumValue 100 []

# one item, too heavy
⍤⤙≍ 0 MaximumValue 10 [100_1]

# five items (cannot be greedy by weight)
⍤⤙≍ 21 MaximumValue 10 [2_5 2_5 2_5 2_5 10_21]

# five items (cannot be greedy by value)
⍤⤙≍ 80 MaximumValue 10 [2_20 2_20 2_20 2_20 10_50]

# example knapsack
⍤⤙≍ 90 MaximumValue 10 [5_10 4_40 6_30 4_50]

# 8 items
⍤⤙≍ 900 MaximumValue 104 [25_350 35_400 45_450 5_20 25_70 3_8 2_5 2_5]

# 15 items
⍤⤙≍ 1458 MaximumValue 750 [70_135 73_139 77_149 80_150 82_156 87_163 90_173 94_184 98_192 106_201 110_210 113_214 115_221 118_229 120_240]
