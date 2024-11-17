# Create an implementation of the atbash cipher
AlphaNum  ← |0.2 +@a ⇡26 +@1 ⇡9
Reverse   ← |0 ⊂⇌AlphaNum
CleanStr  ← |1 /$"__" /⊂ ⍉ regex "\\w" ¯⌵
Tranforms ← |1 ⊏ ⊗ ⊙⟜Reverse:⊂AlphaNum
Split     ← |1 /$"_ _" ⇌{⍥((↘5)⟜(↙5))(-1⌈÷5)⊸⧻}
# Ciphertext ? Plaintext
Encode    ← |1 Split Tranforms CleanStr
# Plaintext ? Ciphertext
Decode    ← |1 Tranforms CleanStr
