import canonicalLaneMathlib.AdmissibleClass
import ContinuousModelTheoryCanonicalLaneLean.ContinuousModelTheoryAdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryCanonicalLaneLean

structure ContinuousCompactnessPackage (O : ContinuousModelAdmittedObject) where
  finitelySatisfiable : Prop
  modelExists : Prop
  compactnessConclusion : Prop

def ContinuousCompactnessClosed (O : ContinuousModelAdmittedObject) (C : ContinuousCompactnessPackage O) : Prop :=
  C.finitelySatisfiable ∧ C.modelExists ∧ C.compactnessConclusion

end ContinuousModelTheoryCanonicalLaneLean
end HautevilleHouse
