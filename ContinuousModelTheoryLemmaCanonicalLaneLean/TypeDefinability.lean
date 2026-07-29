import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure TypeDefinabilityPackage (L : Signature) (T : Theory L) where
  formula : Formula L 1
  parameterSpace : Type
  definableSet : (parameterSpace → (Structure L → Set (Carrier (Structure L))))
  uniformlyContinuous : Prop
  parametersCompact : CompactSpace ?_ parameterSpace

type instance : Type := Σ p : parameterSpace, (definableSet p)

structure TypeDefinabilityEvidence {L : Signature} {T : Theory L} (D : TypeDefinabilityPackage L T) where
  uniformlyContinuousClosed : D.uniformlyContinuous
  parametersCompactClosed : D.parametersCompact

def TypeDefinabilityClosed {L : Signature} {T : Theory L} (D : TypeDefinabilityPackage L T) : Prop :=
  D.uniformlyContinuous ∧ D.parametersCompact

theorem type_definability_closed_from_evidence
    {L : Signature} {T : Theory L} (D : TypeDefinabilityPackage L T)
    (E : TypeDefinabilityEvidence D) : TypeDefinabilityClosed D := by
  exact And.intro E.uniformlyContinuousClosed E.parametersCompactClosed

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse
