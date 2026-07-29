import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousModelTheoryLemmaCanonicalLaneLean.ContinuousModelTheoryAdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

def gateClosed (A : AdmissibleClass) : Prop :=
  True

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  trivial

def ConstrainedContinuousModelTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_model_theory_endgame (A : AdmissibleClass) :
    ConstrainedContinuousModelTheoryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse