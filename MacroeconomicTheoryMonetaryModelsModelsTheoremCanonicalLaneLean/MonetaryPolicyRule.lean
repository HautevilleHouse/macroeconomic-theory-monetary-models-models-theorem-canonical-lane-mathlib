import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure MonetaryPolicyRulePackage where
  interestRateRule : Type u
  inflationTarget : Prop
  outputGap : Prop
  taylorRule : Prop
  forwardGuidance : Prop
  policyEffectiveness : Prop

def MonetaryPolicyRuleClosed (P : MonetaryPolicyRulePackage) : Prop :=
  P.inflationTarget ∧ P.outputGap ∧ P.taylorRule ∧ P.forwardGuidance ∧ P.policyEffectiveness

theorem monetary_policy_rule_closed (P : MonetaryPolicyRulePackage) (h1 : P.inflationTarget) (h2 : P.outputGap) (h3 : P.taylorRule) (h4 : P.forwardGuidance) (h5 : P.policyEffectiveness) : MonetaryPolicyRuleClosed P := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse