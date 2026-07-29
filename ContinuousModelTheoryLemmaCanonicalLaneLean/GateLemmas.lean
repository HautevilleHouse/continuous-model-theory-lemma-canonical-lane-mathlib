import HautevilleHouse.ContinuousModelTheoryLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse