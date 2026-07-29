import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinary

structure ODESystem (n : Nat) where
  phaseSpaceType : Type u
  dimension : n = Fintype.card (Fin n)
  vectorField : phaseSpaceType -> Vector (ℝ) n
  smoothness : Prop
  smoothnessTerm : smoothness

structure FirstIntegral {n : Nat} (sys : ODESystem n) where
  functionValue : sys.phaseSpaceType -> ℝ
  constantOnOrbits : Prop
  constantOnOrbitsTerm : constantOnOrbits

structure ExplicitSolution {n : Nat} (sys : ODESystem n) where
  domain : Set ℝ
  curve : ℝ -> sys.phaseSpaceType
  satisfiesEquation : Prop
  satisfiesEquationTerm : satisfiesEquation

def BridgeClosed {n : Nat} (sys : ODESystem n) (fi : FirstIntegral sys) (sol : ExplicitSolution sys) : Prop :=
  fi.constantOnOrbits ∧ sol.satisfiesEquation

theorem bridge_holds {n : Nat} (sys : ODESystem n) (fi : FirstIntegral sys) (sol : ExplicitSolution sys) : BridgeClosed sys fi sol := by
  exact And.intro fi.constantOnOrbitsTerm sol.satisfiesEquationTerm

end ExplicitSolutionsFirstIntegralsOrdinary
end HautevilleHouse
