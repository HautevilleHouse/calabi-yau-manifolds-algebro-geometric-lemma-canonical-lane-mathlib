import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.CalabiYauCondition

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure YauCalabiTheoremPackage (M : ComplexManifoldPackage) (K : KahlerMetricPackage M)
    (C : FirstChernClassPackage M K) (CY : CalabiYauManifoldPackage M K C) where
  ricciFlatMetricExists : Prop
  uniquenessUpToKahlerClass : Prop
  endpointStatement : Prop

structure YauCalabiTheoremEvidence (M : ComplexManifoldPackage) (K : KahlerMetricPackage M)
    (C : FirstChernClassPackage M K) (CY : CalabiYauManifoldPackage M K C)
    (T : YauCalabiTheoremPackage M K C CY) where
  ricciFlatMetricExistsClosed : T.ricciFlatMetricExists
  uniquenessUpToKahlerClassClosed : T.uniquenessUpToKahlerClass
  endpointStatementClosed : T.endpointStatement

def YauCalabiTheoremClosed (M : ComplexManifoldPackage) (K : KahlerMetricPackage M)
    (C : FirstChernClassPackage M K) (CY : CalabiYauManifoldPackage M K C)
    (T : YauCalabiTheoremPackage M K C CY) : Prop :=
  T.ricciFlatMetricExists ∧ T.uniquenessUpToKahlerClass ∧ T.endpointStatement

theorem yau_calabi_theorem_closed_from_evidence (M : ComplexManifoldPackage)
    (K : KahlerMetricPackage M) (C : FirstChernClassPackage M K)
    (CY : CalabiYauManifoldPackage M K C) (T : YauCalabiTheoremPackage M K C CY)
    (E : YauCalabiTheoremEvidence M K C CY T) : YauCalabiTheoremClosed M K C CY T := by
  exact And.intro E.ricciFlatMetricExistsClosed
    (And.intro E.uniquenessUpToKahlerClassClosed E.endpointStatementClosed)

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse