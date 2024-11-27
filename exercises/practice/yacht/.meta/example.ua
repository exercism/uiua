Categories ← {"ones" "twos" "threes" "fours" "fives" "sixes" "full house" "four of a kind" "little straight" "big straight" "choice" "yacht"}

Counter ← ≡/+⊞= ◴..⊏⊸⍏

SameKind       ← |2 /+ ▽ ⤙= :
LittleStraight ← ×30 ≍ 1_2_3_4_5 ⊏⊸⍏
BigStraight    ← ×30 ≍ 2_3_4_5_6 ⊏⊸⍏
Yacht          ← ×50=1⧻▽⊸◰
FourOfKind     ← /+⍣(↘ 1 °[1 4]|↙ 4 °[4 1]|↙ 4°[5]|0) Counter
FullHouse      ← ⨬(0|/+) ≍[2 3] ⊏⊸⍏ Counter

Score ← |2 ⨬(
  SameKind 1
| SameKind 2
| SameKind 3
| SameKind 4
| SameKind 5
| SameKind 6
| FullHouse
| FourOfKind
| LittleStraight
| BigStraight
| /+ # choice
| Yacht
) ⊗ : Categories □ :
