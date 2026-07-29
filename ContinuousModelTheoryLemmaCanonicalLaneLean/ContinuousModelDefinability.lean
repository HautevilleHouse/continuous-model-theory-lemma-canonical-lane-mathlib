import canonicalLaneMathlib.AdmissibleClass
import ContinuousModelTheoryCanonicalLaneLean.ContinuousModelTheoryAdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryCanonicalLaneLean

structure DefinabilityPackage (O : ContinuousModelAdmittedObject) where
  definableSets : Prop
  closureUnderOperations : Prop
  interpolation : Prop

def DefinabilityClosed (O : ContinuousModelAdmittedObject) (D : DefinabilityPackage O) : Prop :=
  D.definableSets ∧ D.closureUnderOperations ∧ D.interpolation

end ContinuousModelTheoryCanonicalLaneLean
end HautevilleHouse
