import MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean.AssetPricing

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure GrowthModelPackage {U : UtilityTheoryPackage} {E : ArrowDebreuEquilibriumPackage U}
    {M : MonetaryPolicyRulePackage U E} {P : AssetPricingKernelPackage U E M} where
  productionFunction : ℝ → ℝ → ℝ
  capitalAccumulation : ℝ → ℝ → ℝ
  consumptionPath : ℕ → ℝ
  capitalPath : ℕ → ℝ
  steadyStateExists : Prop
  balancedGrowthPath : Prop
  convergenceCondition : Prop

structure GrowthModelEvidence {U : UtilityTheoryPackage} {E : ArrowDebreuEquilibriumPackage U}
    {M : MonetaryPolicyRulePackage U E} {P : AssetPricingKernelPackage U E M}
    (G : GrowthModelPackage U E M P) where
  steadyStateExistsClosed : G.steadyStateExists
  balancedGrowthPathClosed : G.balancedGrowthPath
  convergenceConditionClosed : G.convergenceCondition

def GrowthModelClosed {U : UtilityTheoryPackage} {E : ArrowDebreuEquilibriumPackage U}
    {M : MonetaryPolicyRulePackage U E} {P : AssetPricingKernelPackage U E M}
    (G : GrowthModelPackage U E M P) : Prop :=
  G.steadyStateExists ∧ G.balancedGrowthPath ∧ G.convergenceCondition

theorem growth_model_closed_from_evidence
    {U : UtilityTheoryPackage} {E : ArrowDebreuEquilibriumPackage U}
    {M : MonetaryPolicyRulePackage U E} {P : AssetPricingKernelPackage U E M}
    (G : GrowthModelPackage U E M P) (Ev : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro Ev.steadyStateExistsClosed
    (And.intro Ev.balancedGrowthPathClosed Ev.convergenceConditionClosed)

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse