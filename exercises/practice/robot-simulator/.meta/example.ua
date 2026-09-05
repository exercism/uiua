Create ← {⊙⊙⊙}

Cardinals ← {"east" "south" "west" "north"}

Left  ← ⍜(⊡2|⊡⤚(◿4-1⊗) Cardinals)
Right ← ⍜(⊡2|⊡⤚(◿4+1⊗) Cardinals)
Ahead ← + ⨬(1_0_0|0_¯1_0|¯1_0_0|0_1_0) ⊸(⊗Cardinals ⊡2)

Move ← ˜∧(⨬(Ahead|Left|Right) ⊗"ALR")
