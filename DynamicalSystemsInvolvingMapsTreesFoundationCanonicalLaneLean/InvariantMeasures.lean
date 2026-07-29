import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure InvariantMeasuresPackage where
  measureSpace : Type
  sigmaAlgebra : measureSpace → Prop
  mapPreservingMeasure : Prop
  ergodicDecomposition : Prop
  measureEntropy : Prop

structure InvariantMeasuresEvidence (I : InvariantMeasuresPackage) where
  mapPreservingMeasureClosed : I.mapPreservingMeasure
  ergodicDecompositionClosed : I.ergodicDecomposition
  measureEntropyClosed : I.measureEntropy

def InvariantMeasuresClosed (I : InvariantMeasuresPackage) : Prop :=
  I.mapPreservingMeasure ∧ I.ergodicDecomposition ∧ I.measureEntropy

theorem invariant_measures_closed_from_evidence (I : InvariantMeasuresPackage) (E : InvariantMeasuresEvidence I) :
    InvariantMeasuresClosed I := by
  exact And.intro E.mapPreservingMeasureClosed (And.intro E.ergodicDecompositionClosed E.measureEntropyClosed)

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse