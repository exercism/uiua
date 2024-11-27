Create ← {⊙⊙⊙}

Cardinals ← {"east" "south" "west" "north"}
Left      ← |1 ⍜(⊡2|⊡ ◿4 -1 ⊸⊗ : Cardinals)
Right     ← |1 ⍜(⊡2|⊡ ◿4 +1 ⊸⊗ : Cardinals)
Ahead ← |1 ⨬(
      + 1_0_0
    | + 0_¯1_0
    | + ¯1_0_0
    | + 0_1_0
    ) ⊗ : Cardinals ⊸⊡ 2

ApplyMove ← |2 ⨬(Ahead|Left|Right) ⊗ : "ALR"

Move ← ∧ApplyMove :
