import DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure IteratedMapTreePackage (A : AdmissibleClass) where
  treeStructure : Prop
  mapIteration : Prop
  invariantSet : Prop
  limitBehavior : Prop

structure IteratedMapTreeEvidence {A : AdmissibleClass} (I : IteratedMapTreePackage A) where
  treeStructureClosed : I.treeStructure
  mapIterationClosed : I.mapIteration
  invariantSetClosed : I.invariantSet
  limitBehaviorClosed : I.limitBehavior

def IteratedMapTreeClosed {A : AdmissibleClass} (I : IteratedMapTreePackage A) : Prop :=
  I.treeStructure ∧ I.mapIteration ∧ I.invariantSet ∧ I.limitBehavior

theorem iterated_map_tree_closed_from_evidence {A : AdmissibleClass} (I : IteratedMapTreePackage A) (E : IteratedMapTreeEvidence I) : IteratedMapTreeClosed I := by
  exact And.intro E.treeStructureClosed (And.intro E.mapIterationClosed (And.intro E.invariantSetClosed E.limitBehaviorClosed))

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse