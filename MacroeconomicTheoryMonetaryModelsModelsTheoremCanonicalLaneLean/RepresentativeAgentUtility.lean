import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

structure RepresentativeAgentUtilityPackage where
  consumptionSpace : Type u
  utilityFunction : Type v
  discountFactor : Prop
  riskAversion : Prop
  intertemporalElasticity : Prop
  utilityMaximization : Prop

structure RepresentativeAgentUtilityEvidence (U : RepresentativeAgentUtilityPackage) where
  utilityFunctionClosed : U.utilityFunction
  discountFactorClosed : U.discountFactor
  riskAversionClosed : U.riskAversion
  intertemporalElasticityClosed : U.intertemporalElasticity
  utilityMaximizationClosed : U.utilityMaximization

def RepresentativeAgentUtilityClosed (U : RepresentativeAgentUtilityPackage) : Prop :=
  U.utilityFunction ∧ U.discountFactor ∧ U.riskAversion ∧ U.intertemporalElasticity ∧ U.utilityMaximization

theorem representative_agent_utility_closed_from_evidence (U : RepresentativeAgentUtilityPackage) (E : RepresentativeAgentUtilityEvidence U) : RepresentativeAgentUtilityClosed U := by
  exact And.intro E.utilityFunctionClosed
    (And.intro E.discountFactorClosed
      (And.intro E.riskAversionClosed
        (And.intro E.intertemporalElasticityClosed E.utilityMaximizationClosed)))

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse