import ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

structure FirstIntegralData (n : Nat) where
  variableNames : Vector Type n
  field : Type
  add : field → field → field
  mul : field → field → field
  zero : field
  one : field
  derivationBasis : Vector (Vector field n → field) n

def FirstIntegralDefined (n : Nat) (D : FirstIntegralData n) : Prop := True

def FirstIntegralExplicit (n : Nat) (D : FirstIntegralData n) (f : Vector (Vector field n → field) n → field) : Prop :=
  ∀ (x : Vector field n), f D.derivationBasis = 0

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse