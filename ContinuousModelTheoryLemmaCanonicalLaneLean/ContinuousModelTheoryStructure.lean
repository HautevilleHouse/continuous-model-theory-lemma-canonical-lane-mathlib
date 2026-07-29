import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure ContinuousLanguage where
  relationSymbols : List (Nat × String)
  functionSymbols : List (Nat × String)
  constantSymbols : List String

structure ContinuousStructure (L : ContinuousLanguage) where
  carrier : Type u
  metric : carrier → carrier → ℝ
  relations : ∀ (r : L.relationSymbols), (carrier → ℝ) 
  functions : ∀ (f : L.functionSymbols), (carrier ^ f.1 → carrier)
  constants : ∀ (c : L.constantSymbols), carrier
  metricAxioms : Prop
  relationContinuity : Prop
  functionContinuity : Prop

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse
