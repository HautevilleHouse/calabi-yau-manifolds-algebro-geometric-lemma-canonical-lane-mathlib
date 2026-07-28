import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.KahlerMetric

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure FirstChernClassPackage (M : ComplexManifoldPackage) (K : KahlerMetricPackage M) where
  chernClassRepresentative : Type u
  chernClassZero : Prop
  ricciFormCohomologous : K.ricciForm = chernClassRepresentative

structure FirstChernClassEvidence (M : ComplexManifoldPackage) (K : KahlerMetricPackage M)
    (C : FirstChernClassPackage M K) where
  chernClassZeroClosed : C.chernClassZero
  ricciFormCohomologousClosed : C.ricciFormCohomologous

def FirstChernClassClosed (M : ComplexManifoldPackage) (K : KahlerMetricPackage M)
    (C : FirstChernClassPackage M K) : Prop :=
  C.chernClassZero ∧ C.ricciFormCohomologous

theorem first_chern_class_closed_from_evidence (M : ComplexManifoldPackage)
    (K : KahlerMetricPackage M) (C : FirstChernClassPackage M K)
    (E : FirstChernClassEvidence M K C) : FirstChernClassClosed M K C := by
  exact And.intro E.chernClassZeroClosed E.ricciFormCohomologousClosed

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse