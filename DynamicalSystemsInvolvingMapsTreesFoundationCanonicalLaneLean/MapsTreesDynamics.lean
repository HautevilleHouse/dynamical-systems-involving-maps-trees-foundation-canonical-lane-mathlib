import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure MapsTreesDynamicsPackage where
  treeSpace : Type u
  treeDynamics : Type v
  shiftMap : Type w
  shiftInvariantMeasure : Prop
  topologicalEntropy : Prop
  treeDynamicsClosed : Prop
  shiftMapDefined : shiftMap
  treeDynamicsDefined : treeDynamics
  entropyPositive : topologicalEntropy

structure MapsTreesDynamicsEvidence (P : MapsTreesDynamicsPackage) where
  shiftInvariantMeasureClosed : P.shiftInvariantMeasure
  topologicalEntropyClosed : P.topologicalEntropy

def MapsTreesDynamicsClosed (P : MapsTreesDynamicsPackage) : Prop :=
  P.shiftInvariantMeasure ∧ P.topologicalEntropy

theorem maps_trees_dynamics_closed_from_evidence (P : MapsTreesDynamicsPackage)
    (E : MapsTreesDynamicsEvidence P) : MapsTreesDynamicsClosed P := by
  exact And.intro E.shiftInvariantMeasureClosed E.topologicalEntropyClosed

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse