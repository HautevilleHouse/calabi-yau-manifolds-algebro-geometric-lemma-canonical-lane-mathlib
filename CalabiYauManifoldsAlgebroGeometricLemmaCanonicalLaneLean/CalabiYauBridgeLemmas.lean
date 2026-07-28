import HautevilleHouse.CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.CalabiYauObjects

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CalabiYauWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse