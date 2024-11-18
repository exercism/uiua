# Implement the classic method for composing secret messages called a square code

CleanStr     ← |1 ⊢⍉regex "\\w" ¯⌵
EmptyStr     ← |0 [0 0]
NoneEmptyStr ← |1 [⌈÷:⟜(.⌈√)⧻]
GetRowNCol   ← |1 ⨬(NoneEmptyStr|EmptyStr) ⊸(=0 ⧻)
# Ciphertext ? Plaintext
Ciphertext   ← |1 /$"_ _" ≡(/$"__") ⍉↯⊙(⬚" "↙) ⟜/× GetRowNCol .CleanStr
