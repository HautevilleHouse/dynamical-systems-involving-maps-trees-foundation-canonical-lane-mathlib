import canonicalLaneMathlib.AdmissibleClass
import MapsTreesDynamics
import TreeShiftsCore
import MeasurableTrees
import SymbolicDynamics
import TreeEntropy

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

def ConstrainedMapsTreesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_maps_trees_endgame (A : AdmissibleClass) :
    ConstrainedMapsTreesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse