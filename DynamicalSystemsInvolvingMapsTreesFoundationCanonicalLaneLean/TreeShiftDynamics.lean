import DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean.MapsTreeSpace

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure TreeShiftDynamicsPackage (S : MapsTreeSpace) where
  shiftOperator : S.carrier → S.carrier
  shiftOperatorContinuous : Continuous shiftOperator
  shiftOperatorTreePreserving : ∀ x, S.treeStructure → S.treeStructure
  shiftOperatorTreePreservingTerm : shiftOperatorTreePreserving

structure TreeShiftDynamicsEvidence {S : MapsTreeSpace}
    (P : TreeShiftDynamicsPackage S) where
  shiftOperatorTreePreservingClosed : P.shiftOperatorTreePreserving
  shiftOperatorContinuousClosed : P.shiftOperatorContinuous

def TreeShiftDynamicsClosed {S : MapsTreeSpace}
    (P : TreeShiftDynamicsPackage S) : Prop :=
  P.shiftOperatorContinuous ∧ P.shiftOperatorTreePreserving

theorem tree_shift_dynamics_closed_from_evidence
    {S : MapsTreeSpace} (P : TreeShiftDynamicsPackage S)
    (E : TreeShiftDynamicsEvidence P) : TreeShiftDynamicsClosed P := by
  exact And.intro E.shiftOperatorContinuousClosed E.shiftOperatorTreePreservingClosed

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse
