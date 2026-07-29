import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure MapsTreeSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  treeStructure : Prop
  dynamicsPreservingTree : Prop

structure AdmittedTreeObject where
  space : MapsTreeSpace
  invariantMeasure : Prop
  shiftMap : carrier → carrier
  shiftContinuity : Continuous shiftMap
  conclusion : shiftContinuity ∧ invariantMeasure

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse
