import ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean.SingularityModels

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure CanonicalFirstIntegralsPackage {G : ODESystemPackage}
    {F : FirstIntegralPDEPackage G} {S : SmoothExistencePackage F}
    {Ipkg : IntegrabilityPackage S} {N : NondegeneracyPackage Ipkg}
    (Q : SingularityModelsPackage N) where
  highCurvatureRegionCovered : Prop
  neckCapDecomposition : Prop
  scaleCompatibility : Prop
  persistenceUnderFlow : Prop

structure CanonicalFirstIntegralsEvidence {G : ODESystemPackage}
    {F : FirstIntegralPDEPackage G} {S : SmoothExistencePackage F}
    {Ipkg : IntegrabilityPackage S} {N : NondegeneracyPackage Ipkg}
    {Q : SingularityModelsPackage N} (C : CanonicalFirstIntegralsPackage Q) where
  highCurvatureRegionCoveredClosed : C.highCurvatureRegionCovered
  neckCapDecompositionClosed : C.neckCapDecomposition
  scaleCompatibilityClosed : C.scaleCompatibility
  persistenceUnderFlowClosed : C.persistenceUnderFlow

def CanonicalFirstIntegralsClosed {G : ODESystemPackage}
    {F : FirstIntegralPDEPackage G} {S : SmoothExistencePackage F}
    {Ipkg : IntegrabilityPackage S} {N : NondegeneracyPackage Ipkg}
    {Q : SingularityModelsPackage N} (C : CanonicalFirstIntegralsPackage Q) : Prop :=
  C.highCurvatureRegionCovered ∧ C.neckCapDecomposition ∧
  C.scaleCompatibility ∧ C.persistenceUnderFlow

theorem canonical_first_integrals_closed_from_evidence
    {G : ODESystemPackage} {F : FirstIntegralPDEPackage G}
    {S : SmoothExistencePackage F} {Ipkg : IntegrabilityPackage S}
    {N : NondegeneracyPackage Ipkg} {Q : SingularityModelsPackage N}
    (C : CanonicalFirstIntegralsPackage Q) (E : CanonicalFirstIntegralsEvidence C) :
    CanonicalFirstIntegralsClosed C := by
  exact And.intro E.highCurvatureRegionCoveredClosed
    (And.intro E.neckCapDecompositionClosed
      (And.intro E.scaleCompatibilityClosed E.persistenceUnderFlowClosed))

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse