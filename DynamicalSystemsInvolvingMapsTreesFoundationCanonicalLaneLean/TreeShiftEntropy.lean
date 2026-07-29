import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

structure ShiftInvariantMeasure where
  measureSpace : Type u
  measure : measureSpace → ℝ
  shiftInvariant : ∀ x, measure (shiftMap x) = measure x

structure EntropyRate where
  growthRate : ℝ
  admissibilityCond : Prop

def ShiftEntropyEstimate (E : EntropyRate) : Prop :=
  E.growthRate > 0 ∧ E.admissibilityCond

theorem shift_entropy_estimate_admissible (E : EntropyRate) (h : E.admissibilityCond) :
    ShiftEntropyEstimate E := by
  exact And.intro (by
    have : E.growthRate > 0 := propext h
    exact this) h

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse
