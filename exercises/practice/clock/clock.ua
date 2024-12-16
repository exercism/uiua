┌─╴Clock
  # Create a new clock
  # Clock ? Hours Minutes
  New ← |2 ⊙⋅(⍤ "Please implement New" 0)
  
  # Add minutes to a clock
  # Clock ? Clock Minutes
  Add ← |2 ⊙⋅(⍤ "Please implement Add" 0)
  
  # Subtract minutes to a clock
  # Clock ? Clock Minutes
  Sub ← |2 ⊙⋅(⍤ "Please implement Sub" 0)
  
  # Return a clock's time formatted as a string
  # String ? Clock
  Display ← |1 ⊙(⍤ "Please implement Display" 0)
└─╴
