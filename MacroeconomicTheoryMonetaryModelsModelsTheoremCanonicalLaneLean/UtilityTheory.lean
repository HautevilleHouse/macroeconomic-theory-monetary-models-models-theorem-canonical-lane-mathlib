import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure UtilityPackage where
  agentSet : Prop
  consumptionSpace : Prop
  preferences : Prop
  ordinalUtility : Prop
  expectedUtility : Prop
  riskAversion : Prop

structure UtilityEvidence (U : UtilityPackage) where
  agentSetClosed : U.agentSet
  consumptionSpaceClosed : U.consumptionSpace
  preferencesClosed : U.preferences
  ordinalUtilityClosed : U.ordinalUtility
  expectedUtilityClosed : U.expectedUtility
  riskAversionClosed : U.riskAversion

def UtilityClosed (U : UtilityPackage) : Prop :=
  U.agentSet ∧ U.consumptionSpace ∧ U.preferences ∧
  U.ordinalUtility ∧ U.expectedUtility ∧ U.riskAversion

theorem utility_closed_from_evidence
    (U : UtilityPackage) (Ev : UtilityEvidence U) : UtilityClosed U := by
  exact And.intro Ev.agentSetClosed
    (And.intro Ev.consumptionSpaceClosed
      (And.intro Ev.preferencesClosed
        (And.intro Ev.ordinalUtilityClosed
          (And.intro Ev.expectedUtilityClosed Ev.riskAversionClosed))))

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse