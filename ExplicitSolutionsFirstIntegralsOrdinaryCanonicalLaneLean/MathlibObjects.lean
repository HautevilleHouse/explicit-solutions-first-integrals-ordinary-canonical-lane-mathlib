import ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FirstIntegralSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FirstIntegralAdmittedObject where
  space : FirstIntegralSpace
  completelyIntegrable : Prop
  explicitFirstIntegral : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure FirstIntegralEndgameState where
  object : FirstIntegralAdmittedObject

def FirstIntegralWitnessClosed (O : FirstIntegralAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end ExplicitSolutionsFirstIntegralsOrdinaryCanonicalLaneLean
end HautevilleHouse