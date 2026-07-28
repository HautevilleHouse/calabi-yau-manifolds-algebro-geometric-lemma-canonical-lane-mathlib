import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.CalabiYauManifold

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure CalabiConjecturePackage {C : ComplexStructurePackage} {K : KahlerMetricPackage C} (Y : CalabiYauManifoldPackage K) where
  ricciFlatExistence : Prop
  uniqueness : Prop
  aubinYauTheorem : Prop

structure CalabiConjectureEvidence {C : ComplexStructurePackage} {K : KahlerMetricPackage C} {Y : CalabiYauManifoldPackage K} (P : CalabiConjecturePackage Y) where
  ricciFlatExistenceClosed : P.ricciFlatExistence
  uniquenessClosed : P.uniqueness
  aubinYauTheoremClosed : P.aubinYauTheorem

def CalabiConjectureClosed {C : ComplexStructurePackage} {K : KahlerMetricPackage C} {Y : CalabiYauManifoldPackage K} (P : CalabiConjecturePackage Y) : Prop :=
  P.ricciFlatExistence ∧ P.uniqueness ∧ P.aubinYauTheorem

theorem calabi_conjecture_closed_from_evidence {C : ComplexStructurePackage} {K : KahlerMetricPackage C} {Y : CalabiYauManifoldPackage K} (P : CalabiConjecturePackage Y) (E : CalabiConjectureEvidence P) : CalabiConjectureClosed P := by
  exact And.intro E.ricciFlatExistenceClosed (And.intro E.uniquenessClosed E.aubinYauTheoremClosed)

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse