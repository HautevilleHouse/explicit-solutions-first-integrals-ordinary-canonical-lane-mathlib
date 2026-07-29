import HautevilleHouse.ExplicitSolutionsFirstIntegralsOrdinary.FirstIntegralsFoundation

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinary

structure IntegratingFactor {n : Nat} (sys : ODESystem n) (fi : FirstIntegral sys) where
  factor : sys.phaseSpaceType -> ℝ
  exactnessCondition : Prop
  reconstructsFI : Prop
  exactnessConditionTerm : exactnessCondition
  reconstructsFITerm : reconstructsFI

structure SymmetryMethod {n : Nat} (sys : ODESystem n) where
  symmetryGroup : Type u
  action : symmetryGroup -> sys.phaseSpaceType -> sys.phaseSpaceType
  invariantDerivation : Prop
  invariantDerivationTerm : invariantDerivation

def MethodClosed {n : Nat} (sys : ODESystem n) (im : IntegratingFactor sys) : Prop :=
  im.exactnessCondition ∧ im.reconstructsFI

theorem method_closed_from_terms {n : Nat} (sys : ODESystem n) (im : IntegratingFactor sys) : MethodClosed sys im := by
  exact And.intro im.exactnessConditionTerm im.reconstructsFITerm

end ExplicitSolutionsFirstIntegralsOrdinary
end HautevilleHouse
