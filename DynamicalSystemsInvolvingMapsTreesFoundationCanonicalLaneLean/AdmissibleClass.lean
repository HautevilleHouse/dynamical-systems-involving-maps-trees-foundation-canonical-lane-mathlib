import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure TreesAdmittedObject where
  symbolSpace : Type
  treeStructure : symbolSpace → Prop
  shiftInvariant : Prop
  conclusion : shiftInvariant

structure AdmissibleClass where
  object : TreesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TreesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def TreesWitnessClosed (O : TreesAdmittedObject) : Prop :=
  O.shiftInvariant

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse