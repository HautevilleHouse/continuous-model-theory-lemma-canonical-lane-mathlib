import canonicalLaneMathlib.AdmissibleClass
import ContinuousModelTheoryCanonicalLaneLean.ContinuousModelTheoryAdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryCanonicalLaneLean

structure ApproximationPackage (O : ContinuousModelAdmittedObject) where
  metricStructure : Prop
  finiteApproximations : Prop
  ultraproductLimit : Prop

def ApproximationClosed (O : ContinuousModelAdmittedObject) (A : ApproximationPackage O) : Prop :=
  A.metricStructure ∧ A.finiteApproximations ∧ A.ultraproductLimit

end ContinuousModelTheoryCanonicalLaneLean
end HautevilleHouse
