import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.KahlerMetric

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure CalabiYauManifoldPackage {C : ComplexStructurePackage} (K : KahlerMetricPackage C) where
  firstChernClassVanishes : Prop
  ricciFlat : Prop
  holonomySU : Prop
  compactness : Prop

structure CalabiYauManifoldEvidence {C : ComplexStructurePackage} {K : KahlerMetricPackage C} (Y : CalabiYauManifoldPackage K) where
  firstChernClassVanishesClosed : Y.firstChernClassVanishes
  ricciFlatClosed : Y.ricciFlat
  holonomySUClosed : Y.holonomySU
  compactnessClosed : Y.compactness

def CalabiYauManifoldClosed {C : ComplexStructurePackage} {K : KahlerMetricPackage C} (Y : CalabiYauManifoldPackage K) : Prop :=
  Y.firstChernClassVanishes ∧ Y.ricciFlat ∧ Y.holonomySU ∧ Y.compactness

theorem calabi_yau_manifold_closed_from_evidence {C : ComplexStructurePackage} {K : KahlerMetricPackage C} (Y : CalabiYauManifoldPackage K) (E : CalabiYauManifoldEvidence Y) : CalabiYauManifoldClosed Y := by
  exact And.intro E.firstChernClassVanishesClosed
    (And.intro E.ricciFlatClosed
      (And.intro E.holonomySUClosed E.compactnessClosed))

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse