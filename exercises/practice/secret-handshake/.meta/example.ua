# Convert a number to a sequence of actions in the secret handshake.
Actions   ← {"jump" "close your eyes" "double blink" "wink"}
# Return a reverse flag (0 or 1) and the actions array
ParseBits ← |1.2 ⊢(↙1) ⟜(↘1)⇌⬚0↙5 ⋯
# Commands ? Number
Commands  ← |1 ⨬(⇌|∘) : (▽ ⟜Actions : ParseBits)
