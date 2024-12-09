┌─╴Queen
  # Create a new queen
  # Queen ? Row Column
  New ← |2 ⊙⋅(⍤ "Please implement New" 0)
  
  # Get a queen's row
  # Row ? Queen
  Row ← |1 ⊙(⍤ "Please implement Row" 0)
  
  # Get a queen's column
  # Column ? Queen
  Column ← |1 ⊙(⍤ "Please implement Row" 0)
  
  # Check if two queens can attack each other
  # Validity ? Queen1 Queen2
  CanAttack ← |2 ⊙⋅(⍤ "Please implement CanAttack" 0)
└─╴
