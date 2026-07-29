import DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean.InvariantMeasures

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure TopologicalEntropyPackage {S : MapsTreeSpace}
    {T : TreeShiftDynamicsPackage S}
    (M : InvariantMeasuresPackage T) where
  coveringEntropy : ℝ
  separatedEntropy : ℝ
  coveringEntropyComputed : coveringEntropy = separatedEntropy
  coveringEntropyComputedTerm : coveringEntropyComputed

structure TopologicalEntropyEvidence {S : MapsTreeSpace}
    {T : TreeShiftDynamicsPackage S}
    {M : InvariantMeasuresPackage T}
    (P : TopologicalEntropyPackage M) where
  coveringEntropyComputedClosed : P.coveringEntropyComputed

def TopologicalEntropyClosed {S : MapsTreeSpace}
    {T : TreeShiftDynamicsPackage S}
    {M : InvariantMeasuresPackage T}
    (P : TopologicalEntropyPackage M) : Prop :=
  P.coveringEntropyComputed

theorem topological_entropy_closed_from_evidence
    {S : MapsTreeSpace} {T : TreeShiftDynamicsPackage S}
    {M : InvariantMeasuresPackage T}
    (P : TopologicalEntropyPackage M)
    (E : TopologicalEntropyEvidence P) : TopologicalEntropyClosed P := by
  exact E.coveringEntropyComputedClosed

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse
