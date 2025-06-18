ZeroToNineteen ← {"zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine" "ten" "eleven" "twelve" "thirteen" "fourteen" "fifteen" "sixteen" "seventeen" "eighteen" "nineteen"}
Tens           ← {"" "ten" "twenty" "thirty" "forty" "fifty" "sixty" "seventy" "eighty" "ninety"}

Say ← |1 (
  ⍤"input out of range"×⊸⊃(≥0|≤1000000000000)
  ⊸(⊗1≥1000000000_1000000_1000_100_20_0)
  ⨬(⊃(◿1000000000|$"_ billion"Say⌊÷1000000000)
    ⨬(⋅|˜$"_ _"Say)⊸±
  | ⊃(◿1000000|$"_ million"Say⌊÷1000000)
    ⨬(⋅|˜$"_ _"Say)⊸±
  | ⊃(◿1000|$"_ thousand"Say⌊÷1000)
    ⨬(⋅|˜$"_ _"Say)⊸±
  | ⊃(◿100|$"_ hundred"Say⌊÷100)
    ⨬(⋅|˜$"_ _"Say)⊸±
  | ⊃(◿10|°□˜⊡Tens⌊÷10)
    ⨬(⋅|˜$"_-_"Say)⊸±
  | °□˜⊡ZeroToNineteen
  )
)
