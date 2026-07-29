import ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure AdmissibleClass where
  object : FirstIntegralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FirstIntegralWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse