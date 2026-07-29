import canonicalLaneMathlib.AdmissibleClass
import MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure MacroeconomicAdmittedObject where
  market : Type
  equilibriumExists : Prop
  arrowDebreuPrices : Prop
  conclusion : equilibriumExists ∧ arrowDebreuPrices

def MacroeconomicWitnessClosed (O : MacroeconomicAdmittedObject) : Prop :=
  O.equilibriumExists ∧ O.arrowDebreuPrices

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse
