import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure AssetPricingCAPMPackage where
  assetUniverse : Type u
  riskFreeRate : Prop
  marketPortfolio : Prop
  expectedReturn : Prop
  betaMeasure : Prop
  securityMarketLine : Prop

structure AssetPricingCAPMEvidence (C : AssetPricingCAPMPackage) where
  riskFreeRateClosed : C.riskFreeRate
  marketPortfolioClosed : C.marketPortfolio
  expectedReturnClosed : C.expectedReturn
  betaMeasureClosed : C.betaMeasure
  securityMarketLineClosed : C.securityMarketLine

def AssetPricingCAPMClosed (C : AssetPricingCAPMPackage) : Prop :=
  C.riskFreeRate ∧ C.marketPortfolio ∧ C.expectedReturn ∧ C.betaMeasure ∧ C.securityMarketLine

theorem asset_pricing_capm_closed_from_evidence (C : AssetPricingCAPMPackage) (E : AssetPricingCAPMEvidence C) : AssetPricingCAPMClosed C := by
  exact And.intro E.riskFreeRateClosed
    (And.intro E.marketPortfolioClosed
      (And.intro E.expectedReturnClosed
        (And.intro E.betaMeasureClosed E.securityMarketLineClosed)))

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse