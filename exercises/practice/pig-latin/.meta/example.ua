RegexShuffle! ← ⊂:"ay"◇⊂ ↘⤚◇⧻⊡0_^0⊸regex
SeparateWords ← ⊜□ ⊸≠@ 

RuleTwo       ← RegexShuffle!(0) "^[^aeiou]+"
RuleFour      ← RegexShuffle!(1) "^([^aeiou]+)y"
RuleThree     ← RegexShuffle!(0) "^[^aeiou]*qu"
RuleOne       ← RegexShuffle!(0) "^([aeiou]|xr|yt).*"

ApplyRules    ← ⍣(RuleOne|RuleThree|RuleFour|RuleTwo)

Translate     ← /$"_ _" ⍚ApplyRules SeparateWords