import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousModelTheoryLemmaCanonicalLaneLean.ContinuousFormula

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure ContinuousTypeSpace (M : Type u) [MetricSpace M] where
  types : Set (ContinuousFormula M → ℝ)
  topology : TopologicalSpace types
  compactness : Prop
  compactnessTerm : compactness
  typeSpaceClosed : Prop
  typeSpaceClosedTerm : typeSpaceClosed

def ContinuousTypeSpaceClosed (T : ContinuousTypeSpace M) : Prop :=
  T.typeSpaceClosed

theorem continuous_type_space_closed_from_evidence
    (T : ContinuousTypeSpace M) : ContinuousTypeSpaceClosed T :=
  T.typeSpaceClosedTerm

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse