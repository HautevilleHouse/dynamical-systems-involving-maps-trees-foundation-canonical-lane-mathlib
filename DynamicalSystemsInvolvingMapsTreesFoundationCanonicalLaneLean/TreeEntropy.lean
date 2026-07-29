import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure TreeEntropyPackage where
  treeSystem : Type u
  shiftMap : Type v
  entropyDefinition : Nat → Prop
  entropyUpperBound : Prop
  entropyLowerBound : Prop
  variationalPrinciple : Prop

structure TreeEntropyEvidence (P : TreeEntropyPackage) where
  entropyUpperBoundClosed : P.entropyUpperBound
  entropyLowerBoundClosed : P.entropyLowerBound
  variationalPrincipleClosed : P.variationalPrinciple

def TreeEntropyClosed (P : TreeEntropyPackage) : Prop :=
  P.entropyUpperBound ∧ P.entropyLowerBound ∧ P.variationalPrinciple

theorem tree_entropy_closed_from_evidence (P : TreeEntropyPackage)
    (E : TreeEntropyEvidence P) : TreeEntropyClosed P := by
  exact And.intro E.entropyUpperBoundClosed
    (And.intro E.entropyLowerBoundClosed E.variationalPrincipleClosed)

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse