import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure MetricModelTheoryPackage (S : SignaturePackage) where
  structureSpace : StructureSpace S
  formulaAlgebra : ContinuousFormulaAlgebra S
  completenessTheorem : Prop
  compactnessTheorem : Prop
  definabilityTheorem : Prop

structure MetricModelTheoryEvidence (S : SignaturePackage) (M : MetricModelTheoryPackage S) where
  completenessTheoremClosed : M.completenessTheorem
  compactnessTheoremClosed : M.compactnessTheorem
  definabilityTheoremClosed : M.definabilityTheorem

def MetricModelTheoryClosed (S : SignaturePackage) (M : MetricModelTheoryPackage S) : Prop :=
  M.completenessTheorem ∧ M.compactnessTheorem ∧ M.definabilityTheorem

theorem metric_model_theory_closed_from_evidence (S : SignaturePackage) (M : MetricModelTheoryPackage S)
    (E : MetricModelTheoryEvidence S M) : MetricModelTheoryClosed S M := by
  exact And.intro E.completenessTheoremClosed
    (And.intro E.compactnessTheoremClosed E.definabilityTheoremClosed)

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse