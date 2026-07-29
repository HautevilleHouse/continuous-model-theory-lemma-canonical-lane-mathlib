import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure ContinuousFormulaAlgebra (S : SignaturePackage) where
  formulaType : Type u
  atomicFormulas : List (S.relationSymbols × S.constantSymbols)
  negation : formulaType → formulaType
  conjunction : formulaType → formulaType → formulaType
  existentialQuantifier : formulaType → formulaType
  semantics : (S : StructureSpace S) → formulaType → (S.carrier → ℝ)
  continuity : (φ : formulaType) → Continuous (semantics φ)

structure ContinuousFormulaAlgebraEvidence (S : SignaturePackage) (F : ContinuousFormulaAlgebra S) where
  atomicFormulasClosed : F.atomicFormulas ≠ []
  negationClosed : ∀ φ, F.negation φ ≠ φ
  conjunctionClosed : ∀ φ ψ, F.conjunction φ ψ ≠ φ
  existentialQuantifierClosed : ∀ φ, F.existentialQuantifier φ ≠ φ

def ContinuousFormulaAlgebraClosed (S : SignaturePackage) (F : ContinuousFormulaAlgebra S) : Prop :=
  F.atomicFormulas ≠ [] ∧ (∀ φ, F.negation φ ≠ φ) ∧ (∀ φ ψ, F.conjunction φ ψ ≠ φ) ∧ (∀ φ, F.existentialQuantifier φ ≠ φ)

theorem continuous_formula_algebra_closed_from_evidence (S : SignaturePackage) (F : ContinuousFormulaAlgebra S)
    (E : ContinuousFormulaAlgebraEvidence S F) : ContinuousFormulaAlgebraClosed S F := by
  exact And.intro E.atomicFormulasClosed
    (And.intro E.negationClosed
      (And.intro E.conjunctionClosed E.existentialQuantifierClosed))

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse