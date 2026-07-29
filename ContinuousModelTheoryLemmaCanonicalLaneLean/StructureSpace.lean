import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousModelTheoryLemmaCanonicalLaneLean

structure StructureSpace (S : SignaturePackage) where
  carrier : Type u
  metric : carrier → carrier → ℝ
  interpretations : (r : S.relationSymbols) → Set (carrier × carrier) 
  completeness : Prop

def StructureSpaceEvidence {S : SignaturePackage} (M : StructureSpace S) : Prop :=
  M.completeness

def StructureSpaceClosed {S : SignaturePackage} (M : StructureSpace S) : Prop :=
  M.completeness

theorem structure_space_closed_from_evidence {S : SignaturePackage} (M : StructureSpace S)
    (E : StructureSpaceEvidence M) : StructureSpaceClosed M := by
  exact E

end ContinuousModelTheoryLemmaCanonicalLaneLean
end HautevilleHouse