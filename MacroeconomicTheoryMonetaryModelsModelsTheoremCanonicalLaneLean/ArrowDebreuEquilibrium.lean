import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  priceSystem : Type v
  consumerPreferences : Prop
  producerTechnologies : Prop
  feasibility : Prop
  optimality : Prop
  equilibriumPriceVector : Prop

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  consumerPreferencesClosed : A.consumerPreferences
  producerTechnologiesClosed : A.producerTechnologies
  feasibilityClosed : A.feasibility
  optimalityClosed : A.optimality
  equilibriumPriceVectorClosed : A.equilibriumPriceVector

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.consumerPreferences ∧ A.producerTechnologies ∧ A.feasibility ∧ A.optimality ∧ A.equilibriumPriceVector

theorem arrow_debreu_equilibrium_closed_from_evidence (A : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEquilibriumEvidence A) : ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.consumerPreferencesClosed
    (And.intro E.producerTechnologiesClosed
      (And.intro E.feasibilityClosed
        (And.intro E.optimalityClosed E.equilibriumPriceVectorClosed)))

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse