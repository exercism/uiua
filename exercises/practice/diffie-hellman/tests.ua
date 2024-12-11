~ "diffie-hellman.ua" ~ PrivateKey PublicKey Secret

# Private key is greater than 1 and less than p
P ← 7919
⍤⤙≍ 1 /××⊃(≥2|<P) [⍥(PrivateKey P) 1000]

# Private key is random
P ← 7919
⍤⤙≍ 1 >100 ⧻◴ [⍥(PrivateKey P) 1000]

# Can calculate public key using private key
P          ← 23
G          ← 5
PrivateKey ← 6
⍤⤙≍ 8 PublicKey P G PrivateKey

# Can calculate public key when given a different private key
P          ← 23
G          ← 5
PrivateKey ← 15
⍤⤙≍ 19 PublicKey P G PrivateKey

# Can calculate secret using other party's public key
P              ← 23
TheirPublicKey ← 19
MyPrivateKey   ← 6
⍤⤙≍ 2 Secret P TheirPublicKey MyPrivateKey

# Key exchange
P               ← 23
G               ← 5
AlicePrivateKey ← PrivateKey P
AlicePublicKey  ← PublicKey P G AlicePrivateKey
BobPrivateKey   ← PrivateKey P
BobPublicKey    ← PublicKey P G BobPrivateKey
SecretA         ← Secret P BobPublicKey AlicePrivateKey
SecretB         ← Secret P AlicePublicKey BobPrivateKey
⍤⤙≍ SecretB SecretA
