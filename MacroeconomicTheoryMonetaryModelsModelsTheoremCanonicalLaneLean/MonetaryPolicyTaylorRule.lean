import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure TaylorRulePackage where
  nominalInterestRate : Type u
  inflationRate : Type v
  outputGap : Type w
  targetInflation : ℝ
  equilibriumRealRate : ℝ
  inflationCoefficient : ℝ
  outputCoefficient : ℝ
  policyRule : Prop

structure TaylorRuleEvidence (T : TaylorRulePackage) where
  policyRuleClosed : T.policyRule
  inflationTargetConsistent : T.targetInflation > 0
  coefficientsPositive : T.inflationCoefficient > 0 ∧ T.outputCoefficient > 0

def TaylorRuleClosed (T : TaylorRulePackage) : Prop :=
  T.policyRule ∧ T.targetInflation > 0 ∧
  T.inflationCoefficient > 0 ∧ T.outputCoefficient > 0

theorem taylor_rule_closed_from_evidence
    (T : TaylorRulePackage) (ev : TaylorRuleEvidence T) : TaylorRuleClosed T := by
  rcases ev with ⟨h1, h2, h3⟩
  exact And.intro h1 (And.intro h2 h3)

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse