import HautevilleHouse.ContinuousModelTheoryLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ContinuousModelTheoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse