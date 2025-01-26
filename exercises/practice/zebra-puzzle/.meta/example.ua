Nationalities ← {"Englishman" "Spaniard" "Ukrainian" "Japanese" "Norwegian"}

Def! ←^ /$"_\n_" ⍚$"_ ← _" :°⊏ ⊜□⊸≥@A °$"{_}"°□⊢
Def!({"Red" "Green" "Ivory" "Yellow" "Blue"})
Def!({"Englishman" "Spaniard" "Ukrainian" "Japanese" "Norwegian"})
Def!({"Dog" "Snails" "Fox" "Horse" "Zebra"})
Def!({"Coffee" "Tea" "Milk" "OrangeJuice" "Water"})
Def!({"Dancing" "Painting" "Reading" "Football" "Chess"})
Def!({"Color" "Nationality" "Pet" "Drink" "Hobby"})

Opts        ← ⧅≠⟜⇡5
ValidColors ← ♭≡≡/↥⌕ [Ivory Green]
ValidNationalities ← ↧↧⊃(
  =Norwegian⊢ ⊡Nationality
| =⊃(⊗Englishman⊡Nationality|⊗Red⊡Color)
| =₁⌵-⊃(⊗Norwegian⊡Nationality|⊗Blue⊡Color)
)
ValidPets ← =⊃(⊗Spaniard⊡Nationality|⊗Dog⊡Pet)
ValidDrinks ← ↧↧⊃(
  =Milk⊡₂ ⊡Drink
| =⊃(⊗Green⊡Color|⊗Coffee⊡Drink)
| =⊃(⊗Ukrainian⊡Nationality|⊗Tea⊡Drink)
)
ValidHobbies ← /↧[⊃(
    =⊃(⊗Dancing⊡Hobby|⊗Snails⊡Pet)
  | =⊃(⊗Painting⊡Hobby|⊗Yellow⊡Color)
  | =₁⌵-⊃(⊗Reading⊡Hobby|⊗Fox⊡Pet)
  | =₁⌵-⊃(⊗Painting⊡Hobby|⊗Horse⊡Pet)
  | =⊃(⊗Football⊡Hobby|⊗OrangeJuice⊡Drink)
  | =⊃(⊗Chess⊡Hobby|⊗Japanese⊡Nationality)
  )]

Sol ← comptime(
  ▽⊸ValidColors ≡¤ Opts
  ▽⊸≡ValidNationalities /⊂⊞⊂:Opts
  ▽⊸≡ValidPets /⊂⊞⊂:Opts
  ▽⊸≡ValidDrinks /⊂⊞⊂:Opts
  ▽⊸≡ValidHobbies /⊂⊞⊂:Opts
  ⊢
)

GetNat!     ← °□⊡⊙Nationalities⊡⊃^0(⊡Nationality) Sol
DrinksWater ← GetNat!(⊗Water⊡Drink)
OwnsZebra   ← GetNat!(⊗Zebra⊡Pet)
