import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure PhillipsCurvePackage where
  inflation : Type u
  outputGap : Type v
  expectedInflation : Type w
  slopeParameter : ℝ
  discountFactor : ℝ
  phillipsCurveEquation : Prop

structure PhillipsCurveEvidence (P : PhillipsCurvePackage) where
  phillipsCurveEquationClosed : P.phillipsCurveEquation
  slopeParameterPositive : P.slopeParameter > 0
  discountFactorBetweenZeroOne : P.discountFactor > 0 ∧ P.discountFactor < 1

def PhillipsCurveClosed (P : PhillipsCurvePackage) : Prop :=
  P.phillipsCurveEquation ∧ P.slopeParameter > 0 ∧
  P.discountFactor > 0 ∧ P.discountFactor < 1

theorem phillips_curve_closed_from_evidence
    (P : PhillipsCurvePackage) (ev : PhillipsCurveEvidence P) : PhillipsCurveClosed P := by
  rcases ev with ⟨h1, h2, h3⟩
  exact And.intro h1 (And.intro h2 h3)

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse