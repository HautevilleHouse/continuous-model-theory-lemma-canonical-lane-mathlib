import HautevilleHouse.ContinuousModelTheoryLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ContinuousModelTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ContinuousModelTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse