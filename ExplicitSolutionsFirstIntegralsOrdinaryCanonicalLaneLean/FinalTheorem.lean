import ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean.IntegrabilityConditions

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

def ConstrainedExplicitSolutionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_explicit_solution_endgame (A : AdmissibleClass) :
    ConstrainedExplicitSolutionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse