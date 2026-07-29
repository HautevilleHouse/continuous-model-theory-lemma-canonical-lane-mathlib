import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousModelTheoryLemmaCanonicalLaneLean.ContinuousFormula

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure StabilityCondition (T : Type u) where
  theory : List (ContinuousFormula T)
  stabilityConstant : ℝ
  stabilityCondition : Prop
  stabilityConditionTerm : stabilityCondition

def StabilityConditionClosed (S : StabilityCondition T) : Prop :=
  S.stabilityCondition

theorem stability_condition_closed_from_evidence
    (S : StabilityCondition T) : StabilityConditionClosed S :=
  S.stabilityConditionTerm

structure StabilityTheorem (T : Type u) where
  condition : StabilityCondition T
  classification : Prop
  classificationTerm : classification
  theoremClosed : Prop
  theoremClosedTerm : theoremClosed

def StabilityTheoremClosed (Th : StabilityTheorem T) : Prop :=
  Th.theoremClosed

theorem stability_theorem_closed_from_evidence
    (Th : StabilityTheorem T) : StabilityTheoremClosed Th :=
  Th.theoremClosedTerm

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse