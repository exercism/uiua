OhmStrings   ← {"gigaohms" "megaohms" "kiloohms" "ohms"}
Colors       ← {"black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white"}
Magnitutes   ← [1000000000 1000000 1000 0]
Multiplier   ← ⊂ ↯[3]Magnitutes [1]

ColorCode    ← |1 ⊗0 ⊗Colors
ResistorDuo  ← |1 /+ × [10 1] ∵ColorCode ↯ [2]
TotalValue   ← |1 × (ⁿ:10 ColorCode ⊡2↯[3]) ⟜ResistorDuo
OhmValue     ← |1 ⊡ : OhmStrings ⊗1 ≥ Magnitutes TotalValue
NumericValue ← |1 ÷ ⊡ : Multiplier⊗1 ≥ Magnitutes .TotalValue
ResistorTrio ← $"_ _" NumericValue ⟜OhmValue
