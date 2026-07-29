import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure ContinuousDefinability (L : ContinuousLanguage) (M : ContinuousStructure L) where
  definableSet : (M.carrier → ℝ) → Prop
  definableFunction : (M.carrier ^ n → M.carrier) → Prop
  closureProperties : Prop

structure DefinabilityEvidence (L : ContinuousLanguage) (M : ContinuousStructure L) (D : ContinuousDefinability L M) where
  definableSetClosed : ∀ (f : M.carrier → ℝ), D.definableSet f
  definableFunctionClosed : ∀ (f : M.carrier ^ n → M.carrier), D.definableFunction f
  closurePropertiesClosed : D.closureProperties

def DefinabilityClosed (L : ContinuousLanguage) (M : ContinuousStructure L) (D : ContinuousDefinability L M) : Prop :=
  D.closureProperties

theorem definability_closed_from_evidence (L : ContinuousLanguage) (M : ContinuousStructure L) (D : ContinuousDefinability L M) (E : DefinabilityEvidence L M D) : DefinabilityClosed L M D := by
  exact E.closurePropertiesClosed

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse
