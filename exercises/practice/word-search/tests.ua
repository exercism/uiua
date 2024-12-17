~ "word-search.ua" ~ Search

# Should accept an initial game grid and a target search word
Grid     ← $ jefblpepre
Words    ← {"clojure"}
Expected ← map {"clojure"} {↯0_2_2[]}
⍤⤙≍ Expected Search Words Grid

# Should locate one word written left to right
Grid     ← $ clojurermt
Words    ← {"clojure"}
Expected ← map {"clojure"} {[1_1 7_1]}
⍤⤙≍ Expected Search Words Grid

# Should locate the same word written left to right in a different position
Grid     ← $ mtclojurer
Words    ← {"clojure"}
Expected ← map {"clojure"} {[3_1 9_1]}
⍤⤙≍ Expected Search Words Grid

# Should locate a different left to right word
Grid     ← $ coffeelplx
Words    ← {"coffee"}
Expected ← map {"coffee"} {[1_1 6_1]}
⍤⤙≍ Expected Search Words Grid

# Should locate that different left to right word in a different position
Grid     ← $ xcoffeezlp
Words    ← {"coffee"}
Expected ← map {"coffee"} {[2_1 7_1]}
⍤⤙≍ Expected Search Words Grid

# Should locate a left to right word in two line grid
Grid     ← $ jefblpepre
           $ tclojurerm
Words    ← {"clojure"}
Expected ← map {"clojure"} {[2_2 8_2]}
⍤⤙≍ Expected Search Words Grid

# Should locate a left to right word in three line grid
Grid     ← $ camdcimgtc
           $ jefblpepre
           $ clojurermt
Words    ← {"clojure"}
Expected ← map {"clojure"} {[1_3 7_3]}
⍤⤙≍ Expected Search Words Grid

# Should locate a left to right word in ten line grid
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ screeaumgr
           $ alxhpburyi
           $ jalaycalmp
           $ clojurermt
Words    ← {"clojure"}
Expected ← map {"clojure"} {[1_10 7_10]}
⍤⤙≍ Expected Search Words Grid

# Should locate that left to right word in a different position in a ten line grid
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ screeaumgr
           $ alxhpburyi
           $ clojurermt
           $ jalaycalmp"}
Words    ← {"clojure"}
Expected ← map {"clojure"} {[1_9 7_9]}
⍤⤙≍ Expected Search Words Grid

# Should locate a different left to right word in a ten line grid
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ fortranftw
           $ alxhpburyi
           $ clojurermt
           $ jalaycalmp"}
Words    ← {"fortran"}
Expected ← map {"fortran"} {[1_7 7_7]}
⍤⤙≍ Expected Search Words Grid

# Should locate multiple words
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ fortranftw
           $ alxhpburyi
           $ jalaycalmp
           $ clojurermt
Words    ← {"fortran" "clojure"}
Expected ← map {"clojure" "fortran"} {[1_10 7_10] [1_7 7_7]}
⍤⤙≍ Expected Search Words Grid

# Should locate a single word written right to left
Grid     ← $ rixilelhrs
Words    ← {"elixir"}
Expected ← map {"elixir"} {[6_1 1_1]}
⍤⤙≍ Expected Search Words Grid

# Should locate multiple words written in different horizontal directions
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ screeaumgr
           $ alxhpburyi
           $ jalaycalmp
           $ clojurermt
Words    ← {"elixir" "clojure"}
Expected ← map {"clojure" "elixir"} {[1_10 7_10] [6_5 1_5]}
⍤⤙≍ Expected Search Words Grid

# Should locate words written top to bottom
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ screeaumgr
           $ alxhpburyi
           $ jalaycalmp
           $ clojurermt
Words    ← {"clojure" "elixir" "ecmascript"}
Expected ← map {"clojure" "elixir" "ecmascript"} {[1_10 7_10] [6_5 1_5] [10_1 10_10]}
⍤⤙≍ Expected Search Words Grid

# Should locate words written bottom to top
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ screeaumgr
           $ alxhpburyi
           $ jalaycalmp
           $ clojurermt
Words    ← {"clojure" "elixir" "ecmascript" "rust"}
Expected ← map {"clojure" "elixir" "ecmascript" "rust"} {[1_10 7_10] [6_5 1_5] [10_1 10_10] [9_5 9_2]}
⍤⤙≍ Expected Search Words Grid

# Should locate words written top left to bottom right
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ screeaumgr
           $ alxhpburyi
           $ jalaycalmp
           $ clojurermt
Words    ← {"clojure" "elixir" "ecmascript" "rust" "java"}
Expected ← map {"clojure" "elixir" "ecmascript" "rust" "java"} {[1_10 7_10] [6_5 1_5] [10_1 10_10] [9_5 9_2] [1_1 4_4]}
⍤⤙≍ Expected Search Words Grid

# Should locate words written bottom right to top left
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ screeaumgr
           $ alxhpburyi
           $ jalaycalmp
           $ clojurermt
Words    ← {"clojure" "elixir" "ecmascript" "rust" "java" "lua"}
Expected ← map {"clojure" "elixir" "ecmascript" "rust" "java" "lua"} {[1_10 7_10] [6_5 1_5] [10_1 10_10] [9_5 9_2] [1_1 4_4] [8_9 6_7]}
⍤⤙≍ Expected Search Words Grid

# Should locate words written bottom left to top right
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ screeaumgr
           $ alxhpburyi
           $ jalaycalmp
           $ clojurermt
Words    ← {"clojure" "elixir" "ecmascript" "rust" "java" "lua" "lisp"}
Expected ← map {"clojure" "elixir" "ecmascript" "rust" "java" "lua" "lisp"} {[1_10 7_10] [6_5 1_5] [10_1 10_10] [9_5 9_2] [1_1 4_4] [8_9 6_7] [3_6 6_3]}
⍤⤙≍ Expected Search Words Grid

# Should locate words written top right to bottom left
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ screeaumgr
           $ alxhpburyi
           $ jalaycalmp
           $ clojurermt
Words    ← {"clojure" "elixir" "ecmascript" "rust" "java" "lua" "lisp" "ruby"}
Expected ← map {"clojure" "elixir" "ecmascript" "rust" "java" "lua" "lisp" "ruby"} {[1_10 7_10] [6_5 1_5] [10_1 10_10] [9_5 9_2] [1_1 4_4] [8_9 6_7] [3_6 6_3] [8_6 5_9]}
⍤⤙≍ Expected Search Words Grid

# Should fail to locate a word that is not in the puzzle
Grid     ← $ jefblpepre
           $ camdcimgtc
           $ oivokprjsm
           $ pbwasqroua
           $ rixilelhrs
           $ wolcqlirpc
           $ screeaumgr
           $ alxhpburyi
           $ jalaycalmp
           $ clojurermt
Words    ← {"clojure" "elixir" "ecmascript" "rust" "java" "lua" "lisp" "ruby" "haskell"}
Expected ← map {"clojure" "elixir" "ecmascript" "rust" "java" "lua" "lisp" "ruby" "haskell"} {[1_10 7_10] [6_5 1_5] [10_1 10_10] [9_5 9_2] [1_1 4_4] [8_9 6_7] [3_6 6_3] [8_6 5_9] []}
⍤⤙≍ Expected Search Words Grid

# Should fail to locate words that are not on horizontal, vertical, or diagonal lines
Grid     ← $ abc
           $ def
Words    ← {"aef" "ced" "abf" "cbd"}
Expected ← map {"aef" "ced" "abf" "cbd"} {...↯0_2_2[]}
⍤⤙≍ Expected Search Words Grid

# Should not concatenate different lines to find a horizontal word
Grid     ← $ abceli
           $ xirdfg
Words    ← {"elixir"}
Expected ← map {"elixir"} {↯0_2_2[]}
⍤⤙≍ Expected Search Words Grid

# Should not wrap around horizontally to find a word
Grid     ← $ silabcdefp
Words    ← {"lisp"}
Expected ← map {"lisp"} {↯0_2_2[]}
⍤⤙≍ Expected Search Words Grid

# Should not wrap around vertically to find a word
Grid     ← $ s
           $ u
           $ r
           $ a
           $ b
           $ c
           $ t"}
Words    ← {"rust"}
Expected ← map {"rust"} {↯0_2_2[]}
⍤⤙≍ Expected Search Words Grid
