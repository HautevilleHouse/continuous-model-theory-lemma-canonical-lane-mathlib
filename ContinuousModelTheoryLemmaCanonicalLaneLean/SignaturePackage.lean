import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure SignaturePackage where
  languageSize : Nat
  relationSymbols : List (Nat × String)
  functionSymbols : List (Nat × String)
  constantSymbols : List String
  cardinality : Nat

structure SignatureEvidence (S : SignaturePackage) where
  languageSizeClosed : S.languageSize > 0
  relationSymbolsClosed : S.relationSymbols ≠ []
  functionSymbolsClosed : S.functionSymbols ≠ []
  constantSymbolsClosed : S.constantSymbols ≠ []

def SignatureClosed (S : SignaturePackage) : Prop :=
  S.languageSize > 0 ∧ S.relationSymbols ≠ [] ∧ S.functionSymbols ≠ [] ∧ S.constantSymbols ≠ []

theorem signature_closed_from_evidence (S : SignaturePackage) (E : SignatureEvidence S) :
    SignatureClosed S := by
  exact And.intro E.languageSizeClosed
    (And.intro E.relationSymbolsClosed
      (And.intro E.functionSymbolsClosed E.constantSymbolsClosed))

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse