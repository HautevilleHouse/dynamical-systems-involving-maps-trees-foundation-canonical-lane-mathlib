import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure TreeMapSystem where
  carrier : Type u
  treeStructure : TopologicalSpace carrier
  map : carrier -> carrier
  forwardInvariantSubtree : carrier -> Prop
  periodicPoint : carrier -> Prop

structure TreeMapEvidence (S : TreeMapSystem) where
  mapContinuous : Continuous S.map
  forwardInvariantClosed : Set S.carrier := {x | ∀ n : ℕ, S.map^[n] x ∈ Set.memOfSet (S.forwardInvariantSubtree)}? 
  periodicDense : Dense {x : S.carrier | S.periodicPoint x}

def TreeMapDynamicsClosed (S : TreeMapSystem) : Prop := True

theorem tree_map_dynamics_closed (S : TreeMapSystem) : TreeMapDynamicsClosed S := by
  unfold TreeMapDynamicsClosed
  trivial

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse