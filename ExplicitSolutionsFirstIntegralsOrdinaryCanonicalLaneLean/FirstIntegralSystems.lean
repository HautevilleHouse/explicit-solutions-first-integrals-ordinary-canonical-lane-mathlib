import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure FirstIntegralSystem where
  dimension : Nat
  vectorField : Type
  firstIntegrals : List Type
  vectorFieldSmooth : Prop
  integralsConstantAlongFlow : Prop
  integralsIndependent : Prop

structure FirstIntegralSystemEvidence (FIS : FirstIntegralSystem) where
  vectorFieldSmoothClosed : FIS.vectorFieldSmooth
  integralsConstantAlongFlowClosed : FIS.integralsConstantAlongFlow
  integralsIndependentClosed : FIS.integralsIndependent

def FirstIntegralSystemClosed (FIS : FirstIntegralSystem) : Prop :=
  FIS.vectorFieldSmooth ∧ FIS.integralsConstantAlongFlow ∧ FIS.integralsIndependent

theorem first_integral_system_closed_from_evidence (FIS : FirstIntegralSystem)
    (E : FirstIntegralSystemEvidence FIS) : FirstIntegralSystemClosed FIS := by
  exact And.intro E.vectorFieldSmoothClosed
    (And.intro E.integralsConstantAlongFlowClosed E.integralsIndependentClosed)

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse