import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure DynamicalAdmittedObject where
  space : Type
  treeStructure : Prop
  mapIteration : Prop
  conclusion : DynamicalWitnessClosed this

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.treeStructure ∧ O.mapIteration

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse
