import HautevilleHouse.ExplicitSolutionsFirstIntegralsOrdinary.AdmissibleClass

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinary

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BridgeClosed A.system A.firstIntegral A.solution

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact bridge_holds A.system A.firstIntegral A.solution

end ExplicitSolutionsFirstIntegralsOrdinary
end HautevilleHouse
