# Determine whether or not a string of digits is valid per the Luhn formula

StrToIntArr ← |1 ⋕⊢⍉ regex "\\d"
ValidNumber ← =2 + (=0 ⧻ regex "[^\\d\\s]") ⟜(≠1⧻StrToIntArr)
DoublingFnc ← - ×9 >9 .(×2)
SumOfDigits ← /+ ⍜▽(DoublingFnc) (=1 ◿2) ⇡⧻.⇌ StrToIntArr
ValidChksum ← =0 ◿10 SumOfDigits
# Valid ? String
Validate    ← =2 + ValidChksum ⟜ValidNumber
