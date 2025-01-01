~ "rational-numbers.ua" ~ Rational

# Add two positive rational numbers
⍤⤙≍ Rational~New 7 6 Rational~Add Rational~New 1 2 Rational~New 2 3

# Add a positive rational number and a negative rational number
⍤⤙≍ Rational~New ¯1 6 Rational~Add Rational~New 1 2 Rational~New ¯2 3

# Add two negative rational numbers
⍤⤙≍ Rational~New ¯7 6 Rational~Add Rational~New ¯1 2 Rational~New ¯2 3

# Add a rational number to its additive inverse
⍤⤙≍ Rational~New 0 1 Rational~Add Rational~New 1 2 Rational~New ¯1 2

# Subtract two positive rational numbers
⍤⤙≍ Rational~New ¯1 6 Rational~Sub Rational~New 1 2 Rational~New 2 3

# Subtract a positive rational number and a negative rational number
⍤⤙≍ Rational~New 7 6 Rational~Sub Rational~New 1 2 Rational~New ¯2 3

# Subtract two negative rational numbers
⍤⤙≍ Rational~New 1 6 Rational~Sub Rational~New ¯1 2 Rational~New ¯2 3

# Subtract a rational number from itself
⍤⤙≍ Rational~New 0 1 Rational~Sub Rational~New 1 2 Rational~New 1 2

# Multiply two positive rational numbers
⍤⤙≍ Rational~New 1 3 Rational~Mul Rational~New 1 2 Rational~New 2 3

# Multiply a negative rational number by a positive rational number
⍤⤙≍ Rational~New ¯1 3 Rational~Mul Rational~New ¯1 2 Rational~New 2 3

# Multiply two negative rational numbers
⍤⤙≍ Rational~New 1 3 Rational~Mul Rational~New ¯1 2 Rational~New ¯2 3

# Multiply a rational number by its reciprocal
⍤⤙≍ Rational~New 1 1 Rational~Mul Rational~New 1 2 Rational~New 2 1

# Multiply a rational number by 1
⍤⤙≍ Rational~New 1 2 Rational~Mul Rational~New 1 2 Rational~New 1 1

# Multiply a rational number by 0
⍤⤙≍ Rational~New 0 1 Rational~Mul Rational~New 1 2 Rational~New 0 1

# Divide two positive rational numbers
⍤⤙≍ Rational~New 3 4 Rational~Div Rational~New 1 2 Rational~New 2 3

# Divide a positive rational number by a negative rational number
⍤⤙≍ Rational~New ¯3 4 Rational~Div Rational~New 1 2 Rational~New ¯2 3

# Divide two negative rational numbers
⍤⤙≍ Rational~New 3 4 Rational~Div Rational~New ¯1 2 Rational~New ¯2 3

# Divide a rational number by 1
⍤⤙≍ Rational~New 1 2 Rational~Div Rational~New 1 2 Rational~New 1 1

# Absolute value of a positive rational number
⍤⤙≍ Rational~New 1 2 Rational~Abs Rational~New 1 2

# Absolute value of a positive rational number with negative numerator and denominator
⍤⤙≍ Rational~New 1 2 Rational~Abs Rational~New ¯1 ¯2

# Absolute value of a negative rational number
⍤⤙≍ Rational~New 1 2 Rational~Abs Rational~New ¯1 2

# Absolute value of a negative rational number with negative denominator
⍤⤙≍ Rational~New 1 2 Rational~Abs Rational~New 1 ¯2

# Absolute value of zero
⍤⤙≍ Rational~New 0 1 Rational~Abs Rational~New 0 1

# Absolute value of a rational number is reduced to lowest terms
⍤⤙≍ Rational~New 1 2 Rational~Abs Rational~New 2 4

# Raise a positive rational number to a positive integer power
⍤⤙≍ Rational~New 1 8 Rational~Exprational Rational~New 1 2 3

# Raise a negative rational number to a positive integer power
⍤⤙≍ Rational~New ¯1 8 Rational~Exprational Rational~New ¯1 2 3

# Raise a positive rational number to a negative integer power
⍤⤙≍ Rational~New 25 9 Rational~Exprational Rational~New 3 5 ¯2

# Raise a negative rational number to an even negative integer power
⍤⤙≍ Rational~New 25 9 Rational~Exprational Rational~New ¯3 5 ¯2

# Raise a negative rational number to an odd negative integer power
⍤⤙≍ Rational~New ¯125 27 Rational~Exprational Rational~New ¯3 5 ¯3

# Raise zero to an integer power
⍤⤙≍ Rational~New 0 1 Rational~Exprational Rational~New 0 1 5

# Raise one to an integer power
⍤⤙≍ Rational~New 1 1 Rational~Exprational Rational~New 1 1 4

# Raise a positive rational number to the power of zero
⍤⤙≍ Rational~New 1 1 Rational~Exprational Rational~New 1 2 0

# Raise a negative rational number to the power of zero
⍤⤙≍ Rational~New 1 1 Rational~Exprational Rational~New ¯1 2 0

# Raise a real number to a positive rational number
⍤⤙≍ 16 Rational~Expreal 8 Rational~New 4 3

# Raise a real number to a negative rational number
⍤⤙≍ 0.33333334 Rational~Expreal 9 Rational~New ¯1 2

# Raise a real number to a zero rational number
⍤⤙≍ 1 Rational~Expreal 2 Rational~New 0 1

# Reduce a positive rational number to lowest terms
⍤⤙≍ Rational~New 1 2 Rational~Reduce Rational~New 2 4

# Reduce places the minus sign on the numerator
⍤⤙≍ Rational~New ¯3 4 Rational~Reduce Rational~New 3 ¯4

# Reduce a negative rational number to lowest terms
⍤⤙≍ Rational~New ¯2 3 Rational~Reduce Rational~New ¯4 6

# Reduce a rational number with a negative denominator to lowest terms
⍤⤙≍ Rational~New ¯1 3 Rational~Reduce Rational~New 3 ¯9

# Reduce zero to lowest terms
⍤⤙≍ Rational~New 0 1 Rational~Reduce Rational~New 0 6

# Reduce an integer to lowest terms
⍤⤙≍ Rational~New ¯2 1 Rational~Reduce Rational~New ¯14 7

# Reduce one to lowest terms
⍤⤙≍ Rational~New 1 1 Rational~Reduce Rational~New 13 13
