import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure AssetPricingPackage where
  stateSpace : Type u
  stochasticDiscountFactor : Type v
  assetReturns : Prop
  pricingEquation : Prop
  riskFreeRate : Prop
  riskNeutralMeasure : Prop

structure AssetPricingEvidence (P : AssetPricingPackage) where
  stochasticDiscountFactorClosed : P.stochasticDiscountFactor
  assetReturnsClosed : P.assetReturns
  pricingEquationClosed : P.pricingEquation
  riskFreeRateClosed : P.riskFreeRate
  riskNeutralMeasureClosed : P.riskNeutralMeasure

def AssetPricingClosed (P : AssetPricingPackage) : Prop :=
  P.stochasticDiscountFactor ∧ P.assetReturns ∧
  P.pricingEquation ∧ P.riskFreeRate ∧ P.riskNeutralMeasure

theorem asset_pricing_closed_from_evidence
    (P : AssetPricingPackage) (ev : AssetPricingEvidence P) : AssetPricingClosed P := by
  exact And.intro ev.stochasticDiscountFactorClosed
    (And.intro ev.assetReturnsClosed
      (And.intro ev.pricingEquationClosed
        (And.intro ev.riskFreeRateClosed ev.riskNeutralMeasureClosed)))

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse