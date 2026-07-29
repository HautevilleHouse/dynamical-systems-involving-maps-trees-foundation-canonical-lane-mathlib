import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure MeasurableTreePackage where
  treeSet : Type u
  sigmaAlgebra : Set (Set (treeSet))
  shiftInvariantMeasure : treeSet → Prop
  ergodicMeasure : Prop
  entropyPositive : Prop

structure MeasurableTreeEvidence (P : MeasurableTreePackage) where
  shiftInvariantMeasureExists : P.shiftInvariantMeasure
  ergodicMeasureExists : P.ergodicMeasure
  entropyPositiveExists : P.entropyPositive

def MeasurableTreeClosed (P : MeasurableTreePackage) : Prop :=
  P.shiftInvariantMeasure ∧ P.ergodicMeasure ∧ P.entropyPositive

theorem measurable_tree_closed_from_evidence (P : MeasurableTreePackage)
    (E : MeasurableTreeEvidence P) : MeasurableTreeClosed P := by
  exact And.intro E.shiftInvariantMeasureExists
    (And.intro E.ergodicMeasureExists E.entropyPositiveExists)

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse