import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure IntegrabilityCondition (A : AdmissibleClass) where
  exactnessCondition : Prop
  integratingFactor : Prop
  closureUnderIntegration : Prop
  compatibilityWithFirstIntegrals : Prop

structure IntegrabilityEvidence (A : AdmissibleClass) (I : IntegrabilityCondition A) where
  exactnessConditionClosed : I.exactnessCondition
  integratingFactorClosed : I.integratingFactor
  closureUnderIntegrationClosed : I.closureUnderIntegration
  compatibilityWithFirstIntegralsClosed : I.compatibilityWithFirstIntegrals

def IntegrabilityClosed (A : AdmissibleClass) (I : IntegrabilityCondition A) : Prop :=
  I.exactnessCondition ∧ I.integratingFactor ∧ I.closureUnderIntegration ∧ I.compatibilityWithFirstIntegrals

theorem integrability_closed_from_evidence
    (A : AdmissibleClass) (I : IntegrabilityCondition A) (E : IntegrabilityEvidence A I) :
    IntegrabilityClosed A I := by
  exact And.intro E.exactnessConditionClosed (And.intro E.integratingFactorClosed (And.intro E.closureUnderIntegrationClosed E.compatibilityWithFirstIntegralsClosed))

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse