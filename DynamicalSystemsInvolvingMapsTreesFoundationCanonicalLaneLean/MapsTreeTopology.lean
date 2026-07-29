import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure MapsTreeTopologyPackage where
  treeType : Type
  branchPoints : Prop
  metricOnTree : Prop
  continuousMap : (treeType → treeType) → Prop
  fixedPointProperty : Prop

structure TreeTopologyEvidence (M : MapsTreeTopologyPackage) where
  branchPointsClosed : M.branchPoints
  metricOnTreeClosed : M.metricOnTree
  continuousMapClosed : M.continuousMap
  fixedPointPropertyClosed : M.fixedPointProperty

def MapsTreeTopologyClosed (M : MapsTreeTopologyPackage) : Prop :=
  M.branchPoints ∧ M.metricOnTree ∧ M.continuousMap ∧ M.fixedPointProperty

theorem maps_tree_topology_closed_from_evidence (M : MapsTreeTopologyPackage) (E : TreeTopologyEvidence M) :
    MapsTreeTopologyClosed M := by
  exact And.intro E.branchPointsClosed (And.intro E.metricOnTreeClosed (And.intro E.continuousMapClosed E.fixedPointPropertyClosed))

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse