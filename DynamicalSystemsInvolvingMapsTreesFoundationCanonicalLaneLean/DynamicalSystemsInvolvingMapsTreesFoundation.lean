import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure DynamicalSystemTree where
  treeSymbol : Type u
  shiftMap : treeSymbol → treeSymbol
  admissibleInvariant : Prop
  invariantsGenerated : List Prop

structure AdmissibleInvariantEvidence (D : DynamicalSystemTree) where
  shiftMapInvariant : ∀ x, D.shiftMap x ∈ D.treeSymbol
  admissibleInvariantClosed : D.admissibleInvariant

def DynamicInequalityClosure (D : DynamicalSystemTree) : Prop :=
  D.admissibleInvariant

theorem dynam_sys_admissible_invariant_closed
    (D : DynamicalSystemTree) (E : AdmissibleInvariantEvidence D) :
    DynamicInequalityClosure D := by
  exact E.admissibleInvariantClosed

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse
