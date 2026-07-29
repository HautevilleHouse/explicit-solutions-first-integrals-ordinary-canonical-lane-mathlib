import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure ExplicitSolutionStructure (A : AdmissibleClass) where
  systemType : Prop
  initialCondition : Prop
  solutionFormula : Prop
  explicitClosedForm : Prop
  domainOfDefinition : Prop

structure ExplicitSolutionEvidence (A : AdmissibleClass) (S : ExplicitSolutionStructure A) where
  systemTypeClosed : S.systemType
  initialConditionClosed : S.initialCondition
  solutionFormulaClosed : S.solutionFormula
  explicitClosedFormClosed : S.explicitClosedForm
  domainOfDefinitionClosed : S.domainOfDefinition

def ExplicitSolutionClosed (A : AdmissibleClass) (S : ExplicitSolutionStructure A) : Prop :=
  S.systemType ∧ S.initialCondition ∧ S.solutionFormula ∧ S.explicitClosedForm ∧ S.domainOfDefinition

theorem explicit_solution_closed_from_evidence
    (A : AdmissibleClass) (S : ExplicitSolutionStructure A) (E : ExplicitSolutionEvidence A S) :
    ExplicitSolutionClosed A S := by
  exact And.intro E.systemTypeClosed (And.intro E.initialConditionClosed (And.intro E.solutionFormulaClosed (And.intro E.explicitClosedFormClosed E.domainOfDefinitionClosed)))

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse