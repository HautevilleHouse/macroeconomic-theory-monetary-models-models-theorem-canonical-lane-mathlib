import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure GrowthModelRamseyPackage where
  productionFunction : Type u
  capitalAccumulation : Prop
  householdOptimization : Prop
  steadyStateExistence : Prop
  saddlePathStability : Prop
  technologicalProgress : Prop

structure GrowthModelRamseyEvidence (G : GrowthModelRamseyPackage) where
  productionFunctionClosed : G.productionFunction
  capitalAccumulationClosed : G.capitalAccumulation
  householdOptimizationClosed : G.householdOptimization
  steadyStateExistenceClosed : G.steadyStateExistence
  saddlePathStabilityClosed : G.saddlePathStability
  technologicalProgressClosed : G.technologicalProgress

def GrowthModelRamseyClosed (G : GrowthModelRamseyPackage) : Prop :=
  G.productionFunction ∧ G.capitalAccumulation ∧ G.householdOptimization ∧ G.steadyStateExistence ∧ G.saddlePathStability ∧ G.technologicalProgress

theorem growth_model_ramsey_closed_from_evidence (G : GrowthModelRamseyPackage) (E : GrowthModelRamseyEvidence G) : GrowthModelRamseyClosed G := by
  exact And.intro E.productionFunctionClosed
    (And.intro E.capitalAccumulationClosed
      (And.intro E.householdOptimizationClosed
        (And.intro E.steadyStateExistenceClosed
          (And.intro E.saddlePathStabilityClosed E.technologicalProgressClosed))))

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse