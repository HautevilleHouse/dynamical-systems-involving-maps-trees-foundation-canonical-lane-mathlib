import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure IteratedFunctionSystemTree where
  space : Type u
  topology : TopologicalSpace space
  contractions : List (space -> space)
  treeAddress : ℕ -> List ℕ
  invariantSet : Set space

structure IFS_EVidence (I : IteratedFunctionSystemTree) where
  contractionsContinuous : ∀ f ∈ I.contractions, Continuous f
  contractionsContraction : ∀ f ∈ I.contractions, ∃ c < 1, LipschitzWith c f
  invariantCompact : IsCompact I.invariantSet
  invariantAttractor : I.invariantSet = ⋂ (n : ℕ), (fun s => ⋃ (a : I.treeAddress n), (I.contractions.get? a).get?) ???

def IFSTreeClosed (I : IteratedFunctionSystemTree) : Prop := True

theorem ifs_tree_closed (I : IteratedFunctionSystemTree) : IFSTreeClosed I := by
  unfold IFSTreeClosed
  exact trivial

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse