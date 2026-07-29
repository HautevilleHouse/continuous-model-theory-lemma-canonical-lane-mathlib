import canonicalLaneMathlib.AdmissibleClass
import ContinuousModelTheoryCanonicalLaneLean.ContinuousModelTheoryAdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryCanonicalLaneLean

structure TypeSpacePackage (O : ContinuousModelAdmittedObject) where
  typeSpaceCompact : Prop
  realizability : Prop
  heirarchyProperties : Prop

def TypeSpaceClosed (O : ContinuousModelAdmittedObject) (T : TypeSpacePackage O) : Prop :=
  T.typeSpaceCompact ∧ T.realizability ∧ T.heirarchyProperties

end ContinuousModelTheoryCanonicalLaneLean
end HautevilleHouse
