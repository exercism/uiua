# Calculate the positive mean of an array of numbers
# filter positive values: ▽ ⊸(>0) 
# fork to extract "length" and "sum of all elements": ⊃(⧻|/+)
# divide "sum of all elements" by "length": ÷
PositiveMean ← ÷ ⊃(⧻|/+) ▽ ⊸(>0)
