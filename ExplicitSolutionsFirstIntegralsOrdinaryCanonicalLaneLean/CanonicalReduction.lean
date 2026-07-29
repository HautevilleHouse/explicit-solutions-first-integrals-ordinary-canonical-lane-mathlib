import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure CanonicalReduction (A : AdmissibleClass) where
  orderReduction : Prop
  symmetryExploitation : Prop
  quadratureObtained : Prop
  explicitFormulaDerived : Prop

structure CanonicalReductionEvidence (A : AdmissibleClass) (C : CanonicalReduction A) where
  orderReductionClosed : C.orderReduction
  symmetryExploitationClosed : C.symmetryExploitation
  quadratureObtainedClosed : C.quadratureObtained
  explicitFormulaDerivedClosed : C.explicitFormulaDerived

def CanonicalReductionClosed (A : AdmissibleClass) (C : CanonicalReduction A) : Prop :=
  C.orderReduction ∧ C.symmetryExploitation ∧ C.quadratureObtained ∧ C.explicitFormulaDerived

theorem canonical_reduction_closed_from_evidence
    (A : AdmissibleClass) (C : CanonicalReduction A) (E : CanonicalReductionEvidence A C) :
    CanonicalReductionClosed A C := by
  exact And.intro E.orderReductionClosed (And.intro E.symmetryExploitationClosed (And.intro E.quadratureObtainedClosed E.explicitFormulaDerivedClosed))

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse