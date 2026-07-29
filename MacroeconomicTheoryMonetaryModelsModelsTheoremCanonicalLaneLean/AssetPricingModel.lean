import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure AssetPricingModelPackage where
  assetSpace : Type u
  stochasticDiscountFactor : Type v
  expectedReturn : Type w
  noArbitrage : Prop
  riskNeutralMeasure : Prop
  pricingKernel : Prop
  discountFactor : Prop

def AssetPricingModelClosed (P : AssetPricingModelPackage) : Prop :=
  P.noArbitrage ∧ P.riskNeutralMeasure ∧ P.pricingKernel ∧ P.discountFactor

theorem asset_pricing_model_closed (P : AssetPricingModelPackage) (h1 : P.noArbitrage) (h2 : P.riskNeutralMeasure) (h3 : P.pricingKernel) (h4 : P.discountFactor) : AssetPricingModelClosed P := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse