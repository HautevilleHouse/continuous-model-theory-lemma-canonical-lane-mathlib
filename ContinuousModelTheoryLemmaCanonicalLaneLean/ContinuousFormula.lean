import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

inductive ContinuousFormula (L : ContinuousLanguage) : Nat → Type where
  | atomicRel : (r : L.relationSymbols) → (Fin r.1 → Term L) → ContinuousFormula L r.1
  | atomicEq : Term L → Term L → ContinuousFormula L 0
  | and : ContinuousFormula L n → ContinuousFormula L n → ContinuousFormula L n
  | or : ContinuousFormula L n → ContinuousFormula L n → ContinuousFormula L n
  | not : ContinuousFormula L n → ContinuousFormula L n
  | exists : (Fin (n+1) → Term L) → ContinuousFormula L (n+1) → ContinuousFormula L n
  | forall : (Fin (n+1) → Term L) → ContinuousFormula L (n+1) → ContinuousFormula L n
deriving Repr

structure Term (L : ContinuousLanguage) where
  var : Nat
  const : Option (L.constantSymbols)
  func : Option (Σ (f : L.functionSymbols), (Fin f.1 → Term L))

def Term.evaluate {L : ContinuousLanguage} (t : Term L) (M : ContinuousStructure L) (env : Nat → M.carrier) : M.carrier := by
  sorry

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse
