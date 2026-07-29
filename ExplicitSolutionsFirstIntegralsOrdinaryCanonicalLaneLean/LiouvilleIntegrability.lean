import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExplicitSolutionsFirstIntegralsOrdinary.FirstIntegralSystem

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinary

structure LiouvilleIntegrabilityPackage (S : FirstIntegralSystem) where
  independentFirstIntegrals : List (S.manifold → ℝ)
  involutiveCondition : Prop
  levelSetCompact : Prop
  actionAngleVariables : Prop

structure LiouvilleIntegrabilityEvidence {S : FirstIntegralSystem} (L : LiouvilleIntegrabilityPackage S) where
  involutiveConditionClosed : L.involutiveCondition
  levelSetCompactClosed : L.levelSetCompact
  actionAngleVariablesClosed : L.actionAngleVariables

def LiouvilleIntegrabilityClosed {S : FirstIntegralSystem} (L : LiouvilleIntegrabilityPackage S) : Prop :=
  L.involutiveCondition ∧ L.levelSetCompact ∧ L.actionAngleVariables

theorem liouville_integrability_closed_from_evidence {S : FirstIntegralSystem} (L : LiouvilleIntegrabilityPackage S) (E : LiouvilleIntegrabilityEvidence L) : LiouvilleIntegrabilityClosed L := by
  exact And.intro E.involutiveConditionClosed (And.intro E.levelSetCompactClosed E.actionAngleVariablesClosed)

end ExplicitSolutionsFirstIntegralsOrdinary
end HautevilleHouse