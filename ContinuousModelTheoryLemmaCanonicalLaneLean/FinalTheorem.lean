import canonicalLaneMathlib.AdmissibleClass
import ContinuousModelTheoryLemmaCanonicalLaneLean.StructureSatisfaction
import ContinuousModelTheoryLemmaCanonicalLaneLean.TypeDefinability
import ContinuousModelTheoryLemmaCanonicalLaneLean.QuantifierElimination

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

def ConstrainedContinuousModelTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_model_theory_endgame (A : AdmissibleClass) :
    ConstrainedContinuousModelTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse
