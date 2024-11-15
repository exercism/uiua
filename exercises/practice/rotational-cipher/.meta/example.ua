# Create an implementation of the rotational cipher
Alphabet  ← +⇡26@a
LowerCase ← |2 ⊡⟜Alphabet ◿26+⊗:Alphabet
UpperCase ← |2 ⊡⟜(⌵Alphabet) ◿26+⊗:(⌵Alphabet)
NoneAlpha ← |2 ◌:
# Ciphertext ? Text Key
Rotate    ← ⨬(LowerCase|NoneAlpha|UpperCase)+1±.