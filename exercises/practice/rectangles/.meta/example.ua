ValidPair  ← /×≡(=°⊟) ⊏
ValidXs    ← ValidPair [0_1 2_3]
ValidYs    ← ValidPair [0_2 1_3]
Valid      ← ×⊃(ValidXs≡⊢|ValidYs≡⊣)
Parse      ← ⊜∘(≠@\n.)
Candidates ← ▽≡Valid.⧅<4⊚⌕@+
Rectangle ← (
  ∩(⍜-⇡+1⊃(/↥|/↧))≡(⊃⊢⊣)
  ◴⊂⊂⊃(⊂⊃(⊞⊂⊢|⊞⊂⊣)|≡⇌⊃(⊞⊂⊢|⊞⊂⊣)⊂⊃(⊢|⊣):)
  /↧≠@  ≡⊡ ⊙¤
)
Rectangles ← /+≡Rectangle⊙¤⊸Candidates Parse
