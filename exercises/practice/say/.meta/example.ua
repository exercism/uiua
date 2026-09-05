Ones   ← °□˜⊏{"" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
Teens  ← °□˜⊏⍜↘₃⍚(˜⊂"teen"){"ten" "eleven" "twelve" "thir" "four" "fif" "six" "seven" "eigh" "nine"}
Tens   ← °□˜⊏{"" "" "twenty" "thirty" "forty" "fifty" "sixty" "seventy" "eighty" "ninety"}
Powers ← °□˜⊏{"" "thousand" "million" "billion"}

Join!       ← ⨬⊂^0◡(±×∩⧻)
SayTens     ← ⨬(˜Join!$"_-_" ⊓Ones Tens|Teens)◡⋅=₁
SayHundreds ← ˜Join!$"_ _" ⊓(SayTens|▽±⟜($"_ hundred"Ones)) °⊟₃

Say ← (
  ⊸(×⊃≥₀(<1e12))
  ⨬"input out of range"(
    /$"_ _" ⇌ ▽≡(⊃(±⧻|□Join!$"_ _") ⊓SayHundreds Powers) °˜⊏ ⬚0↯∞_3 ⇌-@0°⋕
  )
  ⍥⋅"zero"⊸(=₀⧻)
)
