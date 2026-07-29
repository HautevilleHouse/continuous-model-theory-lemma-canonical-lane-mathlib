import canonicalLaneMathlib.AdmissibleClass
import ContinuousModelTheoryCanonicalLaneLean.ContinuousModelBridgeLemmas
import ContinuousModelTheoryCanonicalLaneLean.ContinuousModelGateLemmas

namespace HautevilleHouse
namespace ContinuousModelTheoryCanonicalLaneLean

def ConstrainedContinuousModelTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_model_theory_endgame (A : AdmissibleClass) :
    ConstrainedContinuousModelTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousModelTheoryCanonicalLaneLean
end HautevilleHouse
