import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure FirstIntegralConservation (A : AdmissibleClass) where
  conservedQuantity : Prop
  conservationLaw : Prop
  timeIndependence : Prop
  relationToSolution : Prop

structure FirstIntegralEvidence (A : AdmissibleClass) (F : FirstIntegralConservation A) where
  conservedQuantityClosed : F.conservedQuantity
  conservationLawClosed : F.conservationLaw
  timeIndependenceClosed : F.timeIndependence
  relationToSolutionClosed : F.relationToSolution

def FirstIntegralClosed (A : AdmissibleClass) (F : FirstIntegralConservation A) : Prop :=
  F.conservedQuantity ∧ F.conservationLaw ∧ F.timeIndependence ∧ F.relationToSolution

theorem first_integral_closed_from_evidence
    (A : AdmissibleClass) (F : FirstIntegralConservation A) (E : FirstIntegralEvidence A F) :
    FirstIntegralClosed A F := by
  exact And.intro E.conservedQuantityClosed (And.intro E.conservationLawClosed (And.intro E.timeIndependenceClosed E.relationToSolutionClosed))

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse