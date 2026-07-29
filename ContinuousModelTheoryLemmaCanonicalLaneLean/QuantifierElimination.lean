import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure QuantifierEliminationPackage (L : Signature) (T : Theory L) where
  quantifierFreeReduction : Formula L n → Formula L n
  preservesTruth : ∀ (φ : Formula L n) (M : Structure L) (v : Valuation M n),
    M ⊧ φ ↔ M ⊧ (quantifierFreeReduction φ)
  fullQe : ∀ φ : Formula L n, T ⊢ (φ ⬝ quantifierFreeReduction φ)

structure QuantifierEliminationEvidence {L : Signature} {T : Theory L} (Q : QuantifierEliminationPackage L T) where
  preservesTruthClosed : Q.preservesTruth
  fullQeClosed : Q.fullQe

def QuantifierEliminationClosed {L : Signature} {T : Theory L} (Q : QuantifierEliminationPackage L T) : Prop :=
  Q.preservesTruth ∧ Q.fullQe

theorem quantifier_elimination_closed_from_evidence
    {L : Signature} {T : Theory L} (Q : QuantifierEliminationPackage L T)
    (E : QuantifierEliminationEvidence Q) : QuantifierEliminationClosed Q := by
  exact And.intro E.preservesTruthClosed E.fullQeClosed

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse
