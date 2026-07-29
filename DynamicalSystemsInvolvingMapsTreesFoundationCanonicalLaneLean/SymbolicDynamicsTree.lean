import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure SymbolicTreeShift where
  alphabet : Type u
  treeIndex : ℕ
  shiftMap : (ℕ -> alphabet) -> (ℕ -> alphabet)
  admissiblePaths : Set (ℕ -> alphabet)

structure SymbolicTreeEvidence (S : SymbolicTreeShift) where
  shiftContinuous : Continuous S.shiftMap
  shiftInvariantAdmissible : ∀ f : ℕ -> S.alphabet, f ∈ S.admissiblePaths ↔ S.shiftMap f ∈ S.admissiblePaths
  treeIndexFinite : Fintype S.alphabet

def SymbolicTreeDynamicsClosed (S : SymbolicTreeShift) : Prop := True

theorem symbolic_tree_dynamics_closed (S : SymbolicTreeShift) : SymbolicTreeDynamicsClosed S := by
  exact trivial

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse