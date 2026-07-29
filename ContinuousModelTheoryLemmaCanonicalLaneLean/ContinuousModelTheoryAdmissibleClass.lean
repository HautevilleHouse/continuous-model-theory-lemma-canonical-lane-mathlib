import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryCanonicalLaneLean

structure ContinuousModelAdmittedObject where
  structureType : Type u
  language : Type v
  theory : Set (Formula language)
  modelClass : Prop
  conclusion : modelClass

def ContinuousModelTheoryWitnessClosed (O : ContinuousModelAdmittedObject) : Prop :=
  O.modelClass

end ContinuousModelTheoryCanonicalLaneLean
end HautevilleHouse
