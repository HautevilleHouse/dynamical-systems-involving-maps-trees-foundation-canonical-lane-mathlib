import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure SymbolicDynamicsPackage where
  symbolicSpace : Type u
  shiftOperator : Type v
  language : Set (List (symbolicSpace))
  soficOrSubshift : Prop
  entropyComputed : Prop
  irreducible : Prop

structure SymbolicDynamicsEvidence (P : SymbolicDynamicsPackage) where
  soficOrSubshiftClosed : P.soficOrSubshift
  entropyComputedClosed : P.entropyComputed
  irreducibleClosed : P.irreducible

def SymbolicDynamicsClosed (P : SymbolicDynamicsPackage) : Prop :=
  P.soficOrSubshift ∧ P.entropyComputed ∧ P.irreducible

theorem symbolic_dynamics_closed_from_evidence (P : SymbolicDynamicsPackage)
    (E : SymbolicDynamicsEvidence P) : SymbolicDynamicsClosed P := by
  exact And.intro E.soficOrSubshiftClosed
    (And.intro E.entropyComputedClosed E.irreducibleClosed)

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse