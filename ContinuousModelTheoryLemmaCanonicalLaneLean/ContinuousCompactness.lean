import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure ContinuousCompactness (L : ContinuousLanguage) (T : ContinuousTheory L) where
  finitelySatisfiable : Prop
  hasModel : Prop
  compactnessTheorem : finitelySatisfiable → hasModel

structure CompactnessEvidence (L : ContinuousLanguage) (T : ContinuousTheory L) (C : ContinuousCompactness L T) where
  finitelySatisfiableClosed : C.finitelySatisfiable
  hasModelClosed : C.hasModel
  compactnessTheoremClosed : C.finitelySatisfiableClosed → C.hasModelClosed

def CompactnessClosed (L : ContinuousLanguage) (T : ContinuousTheory L) (C : ContinuousCompactness L T) : Prop :=
  C.finitelySatisfiable ∧ C.hasModel

theorem compactness_closed_from_evidence (L : ContinuousLanguage) (T : ContinuousTheory L) (C : ContinuousCompactness L T) (E : CompactnessEvidence L T C) : CompactnessClosed L T C := by
  exact And.intro E.finitelySatisfiableClosed E.hasModelClosed

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse
