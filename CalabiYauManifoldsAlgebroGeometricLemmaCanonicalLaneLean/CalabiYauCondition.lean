import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.ChernClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure CalabiYauManifoldPackage (M : ComplexManifoldPackage) (K : KahlerMetricPackage M)
    (C : FirstChernClassPackage M K) where
  ricciFlatMetric : Prop
  firstChernClassZero : C.chernClassZero
  calabiConjectureHolds : ricciFlatMetric = firstChernClassZero

structure CalabiYauManifoldEvidence (M : ComplexManifoldPackage) (K : KahlerMetricPackage M)
    (C : FirstChernClassPackage M K) (CY : CalabiYauManifoldPackage M K C) where
  ricciFlatMetricClosed : CY.ricciFlatMetric
  firstChernClassZeroClosed : CY.firstChernClassZero
  calabiConjectureHoldsClosed : CY.calabiConjectureHolds

def CalabiYauManifoldClosed (M : ComplexManifoldPackage) (K : KahlerMetricPackage M)
    (C : FirstChernClassPackage M K) (CY : CalabiYauManifoldPackage M K C) : Prop :=
  CY.ricciFlatMetric ∧ CY.firstChernClassZero ∧ CY.calabiConjectureHolds

theorem calabi_yau_manifold_closed_from_evidence (M : ComplexManifoldPackage)
    (K : KahlerMetricPackage M) (C : FirstChernClassPackage M K)
    (CY : CalabiYauManifoldPackage M K C) (E : CalabiYauManifoldEvidence M K C CY) :
    CalabiYauManifoldClosed M K C CY := by
  exact And.intro E.ricciFlatMetricClosed
    (And.intro E.firstChernClassZeroClosed E.calabiConjectureHoldsClosed)

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse