AlphaNum  ← |0.2 +@a ⇡26 +@1 ⇡9
Reverse   ← |0 ⊂⇌AlphaNum
CleanStr  ← |1 /$"__" /⊂ ⍉ regex "\\w" ¯⌵
Tranforms ← |1 ⊏ ⊗ ⊙⟜Reverse:⊂AlphaNum
Split     ← |1 /$"_ _" ⇌{⍥((↘5)⟜(↙5))(-1⌈÷5)⊸⧻}
# Implement the encoding process for the Atbash cipher
# Ciphertext ? Plaintext
Encode    ← |1 Split Tranforms CleanStr
# Implement the decoding process for the Atbash cipher
# Plaintext ? Ciphertext
Decode    ← |1 Tranforms CleanStr
