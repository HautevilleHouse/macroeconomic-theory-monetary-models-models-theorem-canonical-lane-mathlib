import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure MonetaryPolicyPackage where
  centralBankInstrument : Type u
  inflationTarget : ℝ
  outputGapMeasure : ℝ
  taylorRule : Prop
  interestRateSet : Prop
  inflationStabilized : Prop

structure MonetaryPolicyEvidence (M : MonetaryPolicyPackage) where
  taylorRuleClosed : M.taylorRule
  interestRateSetClosed : M.interestRateSet
  inflationStabilizedClosed : M.inflationStabilized

def MonetaryPolicyClosed (M : MonetaryPolicyPackage) : Prop :=
  M.taylorRule ∧ M.interestRateSet ∧ M.inflationStabilized

theorem monetary_policy_closed_from_evidence
    (M : MonetaryPolicyPackage) (E : MonetaryPolicyEvidence M) : MonetaryPolicyClosed M := by
  exact And.intro E.taylorRuleClosed
    (And.intro E.interestRateSetClosed E.inflationStabilizedClosed)

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse