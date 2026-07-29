import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure BusinessCycleModelPackage where
  realBusinessCycle : Prop
  newKeynesian : Prop
  dsge : Prop
  shockPropagation : Prop
  calibration : Prop
  steadyState : Prop
  dynamics : Prop

def BusinessCycleModelClosed (P : BusinessCycleModelPackage) : Prop :=
  P.realBusinessCycle ∧ P.newKeynesian ∧ P.dsge ∧ P.shockPropagation ∧ P.calibration ∧ P.steadyState ∧ P.dynamics

theorem business_cycle_model_closed (P : BusinessCycleModelPackage) (h1 : P.realBusinessCycle) (h2 : P.newKeynesian) (h3 : P.dsge) (h4 : P.shockPropagation) (h5 : P.calibration) (h6 : P.steadyState) (h7 : P.dynamics) : BusinessCycleModelClosed P := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 (And.intro h5 (And.intro h6 h7)))))

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse