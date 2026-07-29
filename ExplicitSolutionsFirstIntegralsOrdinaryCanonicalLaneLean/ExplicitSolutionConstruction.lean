import ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean.FirstIntegralSystems

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure ExplicitSolutionConstruction {FIS : FirstIntegralSystem} where
  levelSetsManifold : Prop
  solutionCurveExists : Prop
  explicitFormula : Prop
  initialConditionDetermined : Prop

structure ExplicitSolutionEvidence {FIS : FirstIntegralSystem}
    (ESC : ExplicitSolutionConstruction FIS) where
  levelSetsManifoldClosed : ESC.levelSetsManifold
  solutionCurveExistsClosed : ESC.solutionCurveExists
  explicitFormulaClosed : ESC.explicitFormula
  initialConditionDeterminedClosed : ESC.initialConditionDetermined

def ExplicitSolutionClosed {FIS : FirstIntegralSystem}
    (ESC : ExplicitSolutionConstruction FIS) : Prop :=
  ESC.levelSetsManifold ∧ ESC.solutionCurveExists ∧
  ESC.explicitFormula ∧ ESC.initialConditionDetermined

theorem explicit_solution_closed_from_evidence {FIS : FirstIntegralSystem}
    (ESC : ExplicitSolutionConstruction FIS) (E : ExplicitSolutionEvidence ESC) :
    ExplicitSolutionClosed ESC := by
  exact And.intro E.levelSetsManifoldClosed
    (And.intro E.solutionCurveExistsClosed
      (And.intro E.explicitFormulaClosed E.initialConditionDeterminedClosed))

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse