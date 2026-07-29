import MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MacroWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MacroeconomicTheoryMonetaryModelsModelsTheoremCanonicalLaneLean
end HautevilleHouse