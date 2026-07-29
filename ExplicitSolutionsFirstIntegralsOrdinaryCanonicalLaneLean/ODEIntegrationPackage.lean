import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExplicitSolutionsFirstIntegralsOrdinary.FirstIntegralSystem

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinary

structure ODEIntegrationPackage (S : FirstIntegralSystem) where
  flowMap : ℝ → S.manifold → S.manifold
  integralCurvesComplete : Prop
  explicitSolutionFormula : Prop
  firstIntegralsConstantAlongFlow : Prop

structure ODEIntegrationEvidence {S : FirstIntegralSystem} (P : ODEIntegrationPackage S) where
  integralCurvesCompleteClosed : P.integralCurvesComplete
  explicitSolutionFormulaClosed : P.explicitSolutionFormula
  firstIntegralsConstantAlongFlowClosed : P.firstIntegralsConstantAlongFlow

def ODEIntegrationClosed {S : FirstIntegralSystem} (P : ODEIntegrationPackage S) : Prop :=
  P.integralCurvesComplete ∧ P.explicitSolutionFormula ∧ P.firstIntegralsConstantAlongFlow

theorem ode_integration_closed_from_evidence {S : FirstIntegralSystem} (P : ODEIntegrationPackage S) (E : ODEIntegrationEvidence P) : ODEIntegrationClosed P := by
  exact And.intro E.integralCurvesCompleteClosed (And.intro E.explicitSolutionFormulaClosed E.firstIntegralsConstantAlongFlowClosed)

end ExplicitSolutionsFirstIntegralsOrdinary
end HautevilleHouse