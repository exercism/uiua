LargestProduct ← (
  ⍤"span must not be negative"◡⋅≥₀
  ⍤"span must be smaller than string length"◡(≤⧻)
  ⍤"invalid character in digits"⊸(/×∊⇡10) -@0
  /↥⍣⧈/×1:
)
