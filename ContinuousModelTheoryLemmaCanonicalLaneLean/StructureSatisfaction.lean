import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure StructureSatisfactionPackage (L : Signature) (M : Structure L) where
  theory : Theory L
  satisfactionRelation : (Sentence L) → Prop
  satisfactionReflexive : satisfactionRelation (Sentence.eq (Term.var "x") (Term.var "x"))
  satisfactionConsistent : ∃ φ : Sentence L, ¬ satisfactionRelation φ
  satisfactionComplete : ∀ φ : Sentence L, satisfactionRelation φ ∨ satisfactionRelation (Sentence.not φ)

structure StructureSatisfactionEvidence {L : Signature} {M : Structure L} (S : StructureSatisfactionPackage L M) where
  satisfactionReflexiveClosed : S.satisfactionReflexive
  satisfactionConsistentClosed : S.satisfactionConsistent
  satisfactionCompleteClosed : S.satisfactionComplete

def StructureSatisfactionClosed {L : Signature} {M : Structure L} (S : StructureSatisfactionPackage L M) : Prop :=
  S.satisfactionReflexive ∧ S.satisfactionConsistent ∧ S.satisfactionComplete

theorem structure_satisfaction_closed_from_evidence
    {L : Signature} {M : Structure L} (S : StructureSatisfactionPackage L M)
    (E : StructureSatisfactionEvidence S) : StructureSatisfactionClosed S := by
  exact And.intro E.satisfactionReflexiveClosed (And.intro E.satisfactionConsistentClosed E.satisfactionCompleteClosed)

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse
