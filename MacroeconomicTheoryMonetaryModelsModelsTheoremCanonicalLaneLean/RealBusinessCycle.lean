import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure RealBusinessCyclePackage where
  capitalStock : Type u
  laborSupply : Type v
  technologyShock : Type w
  productionFunction : Prop
  householdOptimization : Prop
  equilibriumDynamics : Prop

structure RealBusinessCycleEvidence (R : RealBusinessCyclePackage) where
  productionFunctionClosed : R.productionFunction
  householdOptimizationClosed : R.householdOptimization
  equilibriumDynamicsClosed : R.equilibriumDynamics

def RealBusinessCycleClosed (R : RealBusinessCyclePackage) : Prop :=
  R.productionFunction ∧ R.householdOptimization ∧ R.equilibriumDynamics

theorem real_business_cycle_closed_from_evidence
    (R : RealBusinessCyclePackage) (ev : RealBusinessCycleEvidence R) : RealBusinessCycleClosed R := by
  exact And.intro ev.productionFunctionClosed
    (And.intro ev.householdOptimizationClosed ev.equilibriumDynamicsClosed)

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse