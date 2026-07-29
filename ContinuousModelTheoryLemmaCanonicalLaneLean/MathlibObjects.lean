import HautevilleHouse.ContinuousModelTheoryLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuousModelTheorySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuousModelTheoryAdmittedObject where
  space : ContinuousModelTheorySpace
  theoryComplete : Prop
  quantifierElimination : Prop
  modelCountCategorical : Type
  density : Prop
  conclusion : density

structure ContinuousModelTheoryEndgameState where
  object : ContinuousModelTheoryAdmittedObject

def ContinuousModelTheoryWitnessClosed (O : ContinuousModelTheoryAdmittedObject) : Prop :=
  O.density

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse