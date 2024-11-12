~ "largest-series-product.ua" ~ LargestProduct

⍤⤙≍ 18 LargestProduct "29" 2                                                    # finds the largest product if span equals length
⍤⤙≍ 72 LargestProduct "0123456789" 2                                            # can find the largest product of 2 with numbers in order
⍤⤙≍ 48 LargestProduct "576802143" 2                                             # can find the largest product of 2
⍤⤙≍ 504 LargestProduct "0123456789" 3                                           # can find the largest product of 3 with numbers in order
⍤⤙≍ 270 LargestProduct "1027839564" 3                                           # can find the largest product of 3
⍤⤙≍ 15120 LargestProduct "0123456789" 5                                         # can find the largest product of 5 with numbers in order
⍤⤙≍ 23520 LargestProduct "73167176531330624919225119674426574742355349194934" 6 # can get the largest product of a big number
⍤⤙≍ 0 LargestProduct "0000" 2                                                   # reports zero if the only digits are zero
⍤⤙≍ 0 LargestProduct "99099" 3                                                  # reports zero if all spans include zero
⍤⤙≍ "span must be smaller than string length" ⍣(LargestProduct "123" 4)         # rejects span longer than string length
⍤⤙≍ 1 LargestProduct "" 0                                                       # reports 1 for empty string and empty product (0-span)
⍤⤙≍ 1 LargestProduct "123" 0                                                    # reports 1 for nonempty string and empty product (0 span)
⍤⤙≍ "span must be smaller than string length" ⍣(LargestProduct "" 1)            # rejects empty string and nonzero span                                                       # rejects empty string and nonzero span
⍤⤙≍ "invalid character in digits" ⍣(LargestProduct "1234a5" 2)                  # rejects invalid character in digits
⍤⤙≍ "span must not be negative" ⍣(LargestProduct "12345" ¯1)                    # rejects negative span
