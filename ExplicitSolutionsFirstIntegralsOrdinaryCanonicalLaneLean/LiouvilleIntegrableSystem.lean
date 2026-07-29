import ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean.IntegrabilityConditions

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure LiouvilleIntegrableSystem (n : Nat) (D : FirstIntegralData n) (I : IntegrabilityCondition n D) where
  integrals : Vector (Vector field n → field) n
  poissonCommute : ∀ (i j : Fin n), integrals[i] ⋆ integrals[j] = 0
  functionallyIndependent : Prop
  independentClosed : functionallyIndependent
  poissonCommuteClosed : poissonCommute

def LiouvilleIntegrableClosed (n : Nat) (D : FirstIntegralData n) (I : IntegrabilityCondition n D) (L : LiouvilleIntegrableSystem n D I) : Prop :=
  L.functionallyIndependent ∧ L.poissonCommute

theorem liouville_integrable_closed_from_evidence (n : Nat) (D : FirstIntegralData n) (I : IntegrabilityCondition n D) 
    (L : LiouvilleIntegrableSystem n D I) : LiouvilleIntegrableClosed n D I L := by
  exact And.intro L.independentClosed L.poissonCommuteClosed

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse