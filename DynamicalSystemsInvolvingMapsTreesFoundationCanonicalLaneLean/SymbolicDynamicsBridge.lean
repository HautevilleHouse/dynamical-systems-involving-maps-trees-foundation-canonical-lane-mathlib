import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean.DynamicalSystemsInvolvingMapsTreesFoundation

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure SymbolicDynamicsData where
  alphabetSize : ℕ
  forbiddenPatterns : List (List ℕ)
  shiftSpace : Set (List ℕ)
  shiftMapAct : List ℕ → List ℕ := λ x => match x with
    | [] => []
    | _::xs => xs
  admissibility : Prop

def SymbolicDynamicsProjection : SymbolicDynamicsData → DynamicalSystemTree :=
  λ S => {
    treeSymbol := List ℕ
    shiftMap := S.shiftMapAct
    admissibleInvariant := S.admissibility
    invariantsGenerated := [S.admissibility]
  }

theorem symbolic_dynamics_projection_admissible (S : SymbolicDynamicsData) :
    AdmissibleInvariantEvidence (SymbolicDynamicsProjection S) := by
  refine {
    shiftMapInvariant := λ x => by
      simp [SymbolicDynamicsProjection, S.shiftMapAct]
    admissibleInvariantClosed := S.admissibility
  }

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse