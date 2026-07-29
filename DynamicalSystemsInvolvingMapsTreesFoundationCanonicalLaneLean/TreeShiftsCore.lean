import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure TreeShiftCorePackage where
  alphabet : Type u
  shiftMap : (List alphabet → List alphabet) → alphabet → Prop
  shiftSpace : Type v
  closedUnderShift : Prop
  shiftMapDefined : ∀ (f : List alphabet → List alphabet) (a : alphabet), shiftMap f a

def TreeShiftCoreClosed (P : TreeShiftCorePackage) : Prop :=
  P.closedUnderShift

theorem tree_shift_core_closed_from_package (P : TreeShiftCorePackage) :
    TreeShiftCoreClosed P := by
  exact P.closedUnderShift

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse