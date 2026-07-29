import ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean.ExplicitSolutionConstruction

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure IntegrabilityCondition {FIS : FirstIntegralSystem} where
  poissonBracketVanishes : Prop
  invariantManifoldCondition : Prop
  symmetryCondition : Prop

structure IntegrabilityConditionEvidence {FIS : FirstIntegralSystem}
    (IC : IntegrabilityCondition FIS) where
  poissonBracketVanishesClosed : IC.poissonBracketVanishes
  invariantManifoldConditionClosed : IC.invariantManifoldCondition
  symmetryConditionClosed : IC.symmetryCondition

def IntegrabilityConditionClosed {FIS : FirstIntegralSystem}
    (IC : IntegrabilityCondition FIS) : Prop :=
  IC.poissonBracketVanishes ∧ IC.invariantManifoldCondition ∧ IC.symmetryCondition

theorem integrability_condition_closed_from_evidence {FIS : FirstIntegralSystem}
    (IC : IntegrabilityCondition FIS) (E : IntegrabilityConditionEvidence IC) :
    IntegrabilityConditionClosed IC := by
  exact And.intro E.poissonBracketVanishesClosed
    (And.intro E.invariantManifoldConditionClosed E.symmetryConditionClosed)

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse