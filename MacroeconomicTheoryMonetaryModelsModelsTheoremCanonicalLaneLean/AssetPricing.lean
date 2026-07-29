import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure AssetPricingPackage where
  stateSpace : Type u
  discountFactor : (stateSpace → ℝ) → ℝ
  assetPayoffs : (stateSpace → ℝ) → ℝ
  noArbitrage : Prop
  riskNeutralProbability : Prop
  assetPriceDetermined : Prop

structure AssetPricingEvidence (P : AssetPricingPackage) where
  noArbitrageClosed : P.noArbitrage
  riskNeutralProbabilityClosed : P.riskNeutralProbability
  assetPriceDeterminedClosed : P.assetPriceDetermined

def AssetPricingClosed (P : AssetPricingPackage) : Prop :=
  P.noArbitrage ∧ P.riskNeutralProbability ∧ P.assetPriceDetermined

theorem asset_pricing_closed_from_evidence
    (P : AssetPricingPackage) (E : AssetPricingEvidence P) : AssetPricingClosed P := by
  exact And.intro E.noArbitrageClosed
    (And.intro E.riskNeutralProbabilityClosed E.assetPriceDeterminedClosed)

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse