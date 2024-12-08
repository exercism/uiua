~ "parallel-letter-frequency.ua" ~ Frequencies

"no texts"
    ( [] Frequencies )
    {}
    equal?


"one text with one letter"
    ( ["a"] Frequencies )
    {"a": 1}
    equal?

"one text with multiple letters"
    ( ["bbcccd"] Frequencies )
    {"b": 2, "c": 3, "d": 1}
    equal?

"two texts with one letter"
    ( ["e" "f"] Frequencies )
    {"e": 1, "f": 1}
    equal?

"two texts with multiple letters"
    ( ["ggh" "hhi"] Frequencies )
    {"g": 2, "h": 3, "i": 1}
    equal?

"ignore letter casing"
    ( ["m" "M"] Frequencies )
    {"m": 2}
    equal?

"ignore whitespace"
    ( ["   " "	" "
"] Frequencies )
    {}
    equal?

"ignore punctuation"
    ( ["!" "?" ";" "," "."] Frequencies )
    {}
    equal?

"ignore numbers"
    ( ["1" "2" "3" "4" "5" "6" "7" "8" "9"] Frequencies )
    {}
    equal?

"Unicode letters"
    ( ["本" "φ" "ほ" "ø"] Frequencies )
    {"本": 1, "φ": 1, "ほ": 1, "ø": 1}
    equal?

"combination of lower- and uppercase letters, punctuation and white space"
    ( ["There, peeping among the cloud-wrack above a dark tower high up in the mountains, Sam saw a white star twinkle for a while. The beauty of it smote his heart, as he looked up out of the forsaken land, and hope returned to him. For like a shaft, clear and cold, the thought pierced him that in the end, the shadow was only a small and passing thing: there was light and high beauty forever beyond its reach."] Frequencies )
    {"a": 32, "b": 4, "c": 6, "d": 14, "e": 37, "f": 7, "g": 8, "h": 29, "i": 19, "k": 6, "l": 12, "m": 7, "n": 19, "o": 22, "p": 7, "r": 17, "s": 16, "t": 30, "u": 9, "v": 2, "w": 9, "y": 4}
    equal?

"many small texts"
    ( ["abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc" "abbccc"] Frequencies )
    {"a": 50, "b": 100, "c": 150}
    equal?
