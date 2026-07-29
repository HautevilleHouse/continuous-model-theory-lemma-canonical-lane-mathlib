import HautevilleHouse.ContinuousModelTheoryLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def continuousModelTheoryProjection : Projection ContinuousModelTheoryEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem continuous_model_theory_projection_idempotent (x : ContinuousModelTheoryEndgameState) :
    continuousModelTheoryProjection.toFun (continuousModelTheoryProjection.toFun x) = continuousModelTheoryProjection.toFun x := by
  exact continuousModelTheoryProjection.idempotent x

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse