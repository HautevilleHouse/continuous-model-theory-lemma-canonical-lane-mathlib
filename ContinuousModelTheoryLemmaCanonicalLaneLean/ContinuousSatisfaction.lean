import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure ContinuousSatisfaction (L : ContinuousLanguage) (M : ContinuousStructure L) where
  satisfaction : ∀ (n : Nat) (φ : ContinuousFormula L n) (env : M.carrier ^ n), ℝ
  satisfactionAxioms : Prop

structure ContinuousTheory (L : ContinuousLanguage) where
  sentences : List (ContinuousFormula L 0)

structure Model (L : ContinuousLanguage) (T : ContinuousTheory L) (M : ContinuousStructure L) where
  satisfies : ∀ φ ∈ T.sentences, ContinuousSatisfaction.satisfaction M 0 φ () = 0

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse
