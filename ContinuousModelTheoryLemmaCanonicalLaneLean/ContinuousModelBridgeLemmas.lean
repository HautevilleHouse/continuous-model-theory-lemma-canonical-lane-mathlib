import canonicalLaneMathlib.AdmissibleClass
import ContinuousModelTheoryCanonicalLaneLean.ContinuousModelTheoryAdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuousModelTheoryWitnessClosed (A.object : ContinuousModelAdmittedObject)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuousModelTheoryCanonicalLaneLean
end HautevilleHouse
