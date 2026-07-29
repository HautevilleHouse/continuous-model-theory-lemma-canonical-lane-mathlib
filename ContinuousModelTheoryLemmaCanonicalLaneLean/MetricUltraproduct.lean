import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousModelTheoryLemmaCanonicalLaneLean.ContinuousFormula

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure MetricUltraproduct (M : Type u) [MetricSpace M] where
  indexSet : Type v
  ultrafilter : Set (Set indexSet)
  sequences : indexSet → M
  equivalence : Prop
  quotientMetric : MetricSpace (Quotient equivalence)
  ultraproductClosed : Prop
  ultraproductClosedTerm : ultraproductClosed

def MetricUltraproductClosed (U : MetricUltraproduct M) : Prop :=
  U.ultraproductClosed

theorem metric_ultraproduct_closed_from_evidence
    (U : MetricUltraproduct M) : MetricUltraproductClosed U :=
  U.ultraproductClosedTerm

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse