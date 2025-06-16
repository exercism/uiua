ValidateFormat   ← |1 ⍤. =1 ⊢△ regex "^[0-9]{9}[0-9X]$" . ▽≠@-.
ParseToArray     ← |1 ≡⍣⋕10 ▽≠@-.⍣ValidateFormat ""
ValidateChecksum ← |1 =0 ◿ 11 /+ × +1⇌⇡10
IsValid          ← |1 ⍣ValidateChecksum 0 ParseToArray
