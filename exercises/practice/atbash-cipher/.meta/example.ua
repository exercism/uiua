Letters   ← +@a⇡26
Digits    ← +@0⇡10
Alnum     ← ⊂Letters Digits
Reversed  ← ⊂⇌Letters Digits
Sanitize  ← ▽⊸(∊Alnum)
Groups    ← ⊜(□∘)\+=0◿5°⊏
Translate ← |1 ⊏ ⟜Reversed ˜⊗ ⟜Alnum Sanitize ¯⌵
Encode    ← /$"_ _" Groups Translate
Decode    ← |1 Translate Sanitize
