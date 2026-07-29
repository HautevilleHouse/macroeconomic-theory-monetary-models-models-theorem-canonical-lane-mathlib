import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MacroeconomicAdmittedObject where
  model : Type u
  equilibriumExists : Prop
  policyConsistent : Prop
  conclusion : equilibriumExists

structure AdmissibleClass where
  object : MacroeconomicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MacroeconomicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def MacroeconomicWitnessClosed (O : MacroeconomicAdmittedObject) : Prop :=
  O.equilibriumExists

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse