# Generate a private key
# Key ? PrimeP
GeneratePrivateKey ← |1 ⊙(⍤"Please implement GeneratePrivateKey" 0)

# Calculate the public key
# PublicKey ? PrimeP PrimeG PrivateKey 
PublicKey ← |3 ⊙⋅⋅(⍤ "Please implement PublicKey" 0)

# Calculate the secret
# Secret ? PrimeP PublicKey PrivateKey
Secret ← |3 ⊙⋅⋅(⍤ "Please implement Secret" 0)
