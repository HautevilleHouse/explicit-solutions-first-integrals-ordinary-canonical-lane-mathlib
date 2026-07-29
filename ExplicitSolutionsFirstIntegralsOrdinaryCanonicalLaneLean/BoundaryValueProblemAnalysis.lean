import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure BoundaryValueProblemAnalysis (A : AdmissibleClass) where
  boundaryConditions : Prop
  compatibilityWithSystem : Prop
  uniqueExistence : Prop
  relationToFirstIntegrals : Prop

structure BoundaryValueProblemEvidence (A : AdmissibleClass) (B : BoundaryValueProblemAnalysis A) where
  boundaryConditionsClosed : B.boundaryConditions
  compatibilityWithSystemClosed : B.compatibilityWithSystem
  uniqueExistenceClosed : B.uniqueExistence
  relationToFirstIntegralsClosed : B.relationToFirstIntegrals

def BoundaryValueProblemClosed (A : AdmissibleClass) (B : BoundaryValueProblemAnalysis A) : Prop :=
  B.boundaryConditions ∧ B.compatibilityWithSystem ∧ B.uniqueExistence ∧ B.relationToFirstIntegrals

theorem boundary_value_problem_closed_from_evidence
    (A : AdmissibleClass) (B : BoundaryValueProblemAnalysis A) (E : BoundaryValueProblemEvidence A B) :
    BoundaryValueProblemClosed A B := by
  exact And.intro E.boundaryConditionsClosed (And.intro E.compatibilityWithSystemClosed (And.intro E.uniqueExistenceClosed E.relationToFirstIntegralsClosed))

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse