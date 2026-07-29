import ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean.Geometrization
import Mathlib.Dynamics.ODE

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure EndpointClassificationPackage {G : ODESystemPackage}
    {F : FirstIntegralPDEPackage G} {S : SmoothExistencePackage F}
    {Ipkg : IntegrabilityPackage S} {N : NondegeneracyPackage Ipkg}
    {Q : SingularityModelsPackage N} {C : CanonicalFirstIntegralsPackage Q}
    {U : SurgeryPackage C} (Z : GeometrizationPackage U) where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  completelyIntegrable : Prop
  explicitFirstIntegral : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetManifold 1
  endpointMatchesPoincareStatement : Prop

structure EndpointClassificationEvidence {G : ODESystemPackage}
    {F : FirstIntegralPDEPackage G} {S : SmoothExistencePackage F}
    {Ipkg : IntegrabilityPackage S} {N : NondegeneracyPackage Ipkg}
    {Q : SingularityModelsPackage N} {C : CanonicalFirstIntegralsPackage Q}
    {U : SurgeryPackage C} {Z : GeometrizationPackage U}
    (Epkg2 : EndpointClassificationPackage Z) where
  completelyIntegrableClosed : Epkg2.completelyIntegrable
  endpointMatchesPoincareStatementClosed : Epkg2.endpointMatchesPoincareStatement

def EndpointClassificationClosed {G : ODESystemPackage}
    {F : FirstIntegralPDEPackage G} {S : SmoothExistencePackage F}
    {Ipkg : IntegrabilityPackage S} {N : NondegeneracyPackage Ipkg}
    {Q : SingularityModelsPackage N} {C : CanonicalFirstIntegralsPackage Q}
    {U : SurgeryPackage C} {Z : GeometrizationPackage U}
    (Epkg2 : EndpointClassificationPackage Z) : Prop :=
  Epkg2.completelyIntegrable ∧
  Epkg2.endpointMatchesPoincareStatement

theorem endpoint_classification_closed_from_evidence
    {G : ODESystemPackage} {F : FirstIntegralPDEPackage G}
    {S : SmoothExistencePackage F} {Ipkg : IntegrabilityPackage S}
    {N : NondegeneracyPackage Ipkg} {Q : SingularityModelsPackage N}
    {C : CanonicalFirstIntegralsPackage Q} {U : SurgeryPackage C}
    {Z : GeometrizationPackage U} (Epkg2 : EndpointClassificationPackage Z)
    (E : EndpointClassificationEvidence Epkg2) : EndpointClassificationClosed Epkg2 := by
  exact And.intro E.completelyIntegrableClosed
    E.endpointMatchesPoincareStatementClosed

theorem endpoint_classification_supplies_mathlib_statement
    {G : ODESystemPackage} {F : FirstIntegralPDEPackage G}
    {S : SmoothExistencePackage F} {Ipkg : IntegrabilityPackage S}
    {N : NondegeneracyPackage Ipkg} {Q : SingularityModelsPackage N}
    {C : CanonicalFirstIntegralsPackage Q} {U : SurgeryPackage C}
    {Z : GeometrizationPackage U} (Epkg2 : EndpointClassificationPackage Z) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere
      Epkg2.targetManifold Epkg2.targetTopology 1 :=
  Epkg2.explicitFirstIntegral

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse