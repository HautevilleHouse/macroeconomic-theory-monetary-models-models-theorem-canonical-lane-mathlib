import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  priceSystem : commoditySpace → ℝ
  householdEndowments : commoditySpace → ℝ
  productionSet : commoditySpace → Prop
  budgetConstraint : ∀ (p : commoditySpace → ℝ) (w : ℝ), Prop
  utilityFunction : commoditySpace → ℝ
  utilityMaximization : Prop
  profitMaximization : Prop
  marketClearing : Prop
  equilibriumExists : Prop

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  utilityMaximizationClosed : A.utilityMaximization
  profitMaximizationClosed : A.profitMaximization
  marketClearingClosed : A.marketClearing
  equilibriumExistsClosed : A.equilibriumExists

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.utilityMaximization ∧ A.profitMaximization ∧ A.marketClearing ∧ A.equilibriumExists

theorem arrow_debreu_equilibrium_closed_from_evidence
    (A : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEquilibriumEvidence A) :
    ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.utilityMaximizationClosed
    (And.intro E.profitMaximizationClosed
      (And.intro E.marketClearingClosed E.equilibriumExistsClosed))

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse