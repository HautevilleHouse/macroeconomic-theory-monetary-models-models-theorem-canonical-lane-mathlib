import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Prop
  capitalAccumulation : Prop
  laborSupply : Prop
  consumptionPath : Prop
  steadyState : Prop
  optimalGrowth : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  productionFunctionClosed : G.productionFunction
  capitalAccumulationClosed : G.capitalAccumulation
  laborSupplyClosed : G.laborSupply
  consumptionPathClosed : G.consumptionPath
  steadyStateClosed : G.steadyState
  optimalGrowthClosed : G.optimalGrowth

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.productionFunction ∧ G.capitalAccumulation ∧ G.laborSupply ∧
  G.consumptionPath ∧ G.steadyState ∧ G.optimalGrowth

theorem growth_model_closed_from_evidence
    (G : GrowthModelPackage) (Ev : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro Ev.productionFunctionClosed
    (And.intro Ev.capitalAccumulationClosed
      (And.intro Ev.laborSupplyClosed
        (And.intro Ev.consumptionPathClosed
          (And.intro Ev.steadyStateClosed Ev.optimalGrowthClosed))))

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse