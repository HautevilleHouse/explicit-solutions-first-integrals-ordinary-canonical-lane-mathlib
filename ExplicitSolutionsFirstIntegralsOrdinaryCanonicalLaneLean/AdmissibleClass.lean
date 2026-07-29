import HautevilleHouse.ExplicitSolutionsFirstIntegralsOrdinary.FirstIntegralsFoundation

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinary

structure AdmissibleClass where
  system : ODESystem 3
  firstIntegral : FirstIntegral system
  solution : ExplicitSolution system
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BridgeClosed A.system A.firstIntegral A.solution ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExplicitSolutionsFirstIntegralsOrdinary
end HautevilleHouse
