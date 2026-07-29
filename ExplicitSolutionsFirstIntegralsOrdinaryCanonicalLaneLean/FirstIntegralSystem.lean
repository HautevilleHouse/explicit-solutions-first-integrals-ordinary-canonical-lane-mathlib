import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinary

structure FirstIntegralSystem where
  manifold : Type u
  topology : TopologicalSpace manifold
  dim : Nat
  vectorField : manifold → (manifold → ℝ)
  firstIntegrals : List (manifold → ℝ)
  poissonBracketClosed : Prop
  involutiveSet : Prop

def FirstIntegralSystemClosed (S : FirstIntegralSystem) : Prop :=
  S.poissonBracketClosed ∧ S.involutiveSet

end ExplicitSolutionsFirstIntegralsOrdinary
end HautevilleHouse