import DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean.SymbolicDynamics

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure ErgodicTheoryPackage {A : AdmissibleClass} {I : IteratedMapTreePackage A} (S : SymbolicDynamicsPackage I) where
  invariantMeasure : Prop
  ergodicity : Prop
  mixing : Prop
  entropyFormula : Prop

structure ErgodicTheoryEvidence {A : AdmissibleClass} {I : IteratedMapTreePackage A} {S : SymbolicDynamicsPackage I} (E : ErgodicTheoryPackage S) where
  invariantMeasureClosed : E.invariantMeasure
  ergodicityClosed : E.ergodicity
  mixingClosed : E.mixing
  entropyFormulaClosed : E.entropyFormula

def ErgodicTheoryClosed {A : AdmissibleClass} {I : IteratedMapTreePackage A} {S : SymbolicDynamicsPackage I} (E : ErgodicTheoryPackage S) : Prop :=
  E.invariantMeasure ∧ E.ergodicity ∧ E.mixing ∧ E.entropyFormula

theorem ergodic_theory_closed_from_evidence {A : AdmissibleClass} {I : IteratedMapTreePackage A} {S : SymbolicDynamicsPackage I} (E : ErgodicTheoryPackage S) (Ev : ErgodicTheoryEvidence E) : ErgodicTheoryClosed E := by
  exact And.intro Ev.invariantMeasureClosed (And.intro Ev.ergodicityClosed (And.intro Ev.mixingClosed Ev.entropyFormulaClosed))

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse