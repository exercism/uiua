# Turn color-coded bands of resistors into resistance value
# Value ? Colors
Colors           ← |0 {"black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white"}
ColorCode        ← |1 ⊗0 ⊗Colors
ResistorsValue   ← |1 /+ × [10 1] ∵ ColorCode ↯ [2]
