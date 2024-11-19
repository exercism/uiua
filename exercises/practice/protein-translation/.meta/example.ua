# Translate RNA sequences into proteins.

Split ← |1 ⇌⍣{⍥((↘3)⟜(↙3))(-1⌈÷3)⊸⧻}{}
CodonsArr ← |0 {
  "AUG"
  "UUU" "UUC"
  "UUA" "UUG"
  "UCU" "UCC" "UCA" "UCG"
  "UAU" "UAC"
  "UGU" "UGC"
  "UGG"
  "UAA" "UAG" "UGA"
}
ProteinsArr ← |0 {
  "Methionine"
  ."Phenylalanine"
  ."Leucine"
  ..."Serine"
  ."Tyrosine"
  ."Cysteine"
  "Tryptophan"
  .."STOP"
}
Translate ← |1 ⍣⊏$"error: Invalid codon" ⊗ Split :CodonsArr:ProteinsArr
# Proteins ? RNA
Proteins ← |1 ↙ ⊗ □"STOP" . Translate
