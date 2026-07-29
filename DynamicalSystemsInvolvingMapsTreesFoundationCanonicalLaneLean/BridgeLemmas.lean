import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TreesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsInvolvingMapsTreesFoundationCanonicalLaneLean
end HautevilleHouse