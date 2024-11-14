AssertQuestion       ← ⍤. ⧻ regex "\\?$"
AssertYelled         ← ⍤. × (≥1⧻ regex "[A-Z]+") : (≍⌵) ..
AssertWhitespace     ← ⍤. ⧻ regex "[\\W]*"

HeyBob ← |1 ⍣(
  "Calm down, I know what I'm doing!" ⊃AssertQuestion AssertYelled
| "Sure." AssertQuestion
| "Whoa, chill out!" AssertYelled
| "Fine. Be that way!" AssertWhitespace
| "Whatever."
)
