GeneratePairs    ← ⊸⍜°√/+⍉⧅₂<↘₁⇡
FilterValidPairs ← ⊸≡/+▽⊃(=⊸⌊|⍉⊂)
TripletsWithSum  ← |1 ◴≡⍆▽=⟜(FilterValidPairs GeneratePairs)
