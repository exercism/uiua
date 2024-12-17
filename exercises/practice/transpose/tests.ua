~ "transpose.ua" ~ Transpose

# Empty string
Lines    ← {}
Expected ← {}
⍤⤙≍ Expected Transpose Lines

# Two characters in a row
Lines ← {
  "A1"
}
Expected ← {
  "A"
  "1"
}
⍤⤙≍ Expected Transpose Lines

# Two characters in a column
Lines ← {
  "A"
  "1"
}
Expected ← {
  "A1"
}
⍤⤙≍ Expected Transpose Lines

# Simple
Lines ← {
  "ABC"
  "123"
}
Expected ← {
  "A1"
  "B2"
  "C3"
}
⍤⤙≍ Expected Transpose Lines

# Single line
Lines ← {
  "Single line."
}
Expected ← {
  "S"
  "i"
  "n"
  "g"
  "l"
  "e"
  " "
  "l"
  "i"
  "n"
  "e"
  "."
}
⍤⤙≍ Expected Transpose Lines

# First line longer than second line
Lines ← {
  "The fourth line."
  "The fifth line."
}
Expected ← {
  "TT"
  "hh"
  "ee"
  "  "
  "ff"
  "oi"
  "uf"
  "rt"
  "th"
  "h "
  " l"
  "li"
  "in"
  "ne"
  "e."
  "."
}
⍤⤙≍ Expected Transpose Lines

# Second line longer than first line
Lines ← {
  "The first line."
  "The second line."
}
Expected ← {
  "TT"
  "hh"
  "ee"
  "  "
  "fs"
  "ie"
  "rc"
  "so"
  "tn"
  " d"
  "l "
  "il"
  "ni"
  "en"
  ".e"
  " ."
}
⍤⤙≍ Expected Transpose Lines

# Mixed line length
Lines ← {
  "The longest line."
  "A long line."
  "A longer line."
  "A line."
}
Expected ← {
  "TAAA"
  "h   "
  "elll"
  " ooi"
  "lnnn"
  "ogge"
  "n e."
  "glr"
  "ei "
  "snl"
  "tei"
  " .n"
  "l e"
  "i ."
  "n"
  "e"
  "."
}
⍤⤙≍ Expected Transpose Lines

# Square
Lines ← {
  "HEART"
  "EMBER"
  "ABUSE"
  "RESIN"
  "TREND"
}
Expected ← {
  "HEART"
  "EMBER"
  "ABUSE"
  "RESIN"
  "TREND"
}
⍤⤙≍ Expected Transpose Lines

# Rectangle
Lines ← {
  "FRACTURE"
  "OUTLINED"
  "BLOOMING"
  "SEPTETTE"
}
Expected ← {
  "FOBS"
  "RULE"
  "ATOP"
  "CLOT"
  "TIME"
  "UNIT"
  "RENT"
  "EDGE"
}
⍤⤙≍ Expected Transpose Lines

# Triangle
Lines ← {
  "T"
  "EE"
  "AAA"
  "SSSS"
  "EEEEE"
  "RRRRRR"
}
Expected ← {
  "TEASER"
  " EASER"
  "  ASER"
  "   SER"
  "    ER"
  "     R"
}
⍤⤙≍ Expected Transpose Lines

# Jagged triangle
Lines ← {
  "11"
  "2"
  "3333"
  "444"
  "555555"
  "66666"
}
Expected ← {
  "123456"
  "1 3456"
  "  3456"
  "  3 56"
  "    56"
  "    5"
}
⍤⤙≍ Expected Transpose Lines
