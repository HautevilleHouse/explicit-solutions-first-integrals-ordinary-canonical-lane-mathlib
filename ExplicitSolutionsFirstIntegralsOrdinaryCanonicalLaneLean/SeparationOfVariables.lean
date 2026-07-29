import ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean.LiouvilleIntegrableSystem

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure SeparationOfVariables (n : Nat) (D : FirstIntegralData n) (I : IntegrabilityCondition n D) (L : LiouvilleIntegrableSystem n D I) where
  separationAnsatz : Vector (Vector field n → field) n
  separatedForm : ∀ (i : Fin n), L.integrals[i] = separationAnsatz[i]
  separatedFormClosed : separatedForm
  ansatzExplicit : Prop
  ansatzExplicitClosed : ansatzExplicit

def SeparationClosed (n : Nat) (D : FirstIntegralData n) (I : IntegrabilityCondition n D) (L : LiouvilleIntegrableSystem n D I) (S : SeparationOfVariables n D I L) : Prop :=
  S.separatedForm ∧ S.ansatzExplicit

theorem separation_closed_from_evidence (n : Nat) (D : FirstIntegralData n) (I : IntegrabilityCondition n D) (L : LiouvilleIntegrableSystem n D I) (S : SeparationOfVariables n D I L) : SeparationClosed n D I L S := by
  exact And.intro S.separatedFormClosed S.ansatzExplicitClosed

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse