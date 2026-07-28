import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.ComplexStructure

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure KahlerMetricPackage (C : ComplexStructurePackage) where
  metric : Type v
  kahlerForm : Type w
  closed : Prop
  positive : Prop
  compatibility : Prop

structure KahlerMetricEvidence {C : ComplexStructurePackage} (K : KahlerMetricPackage C) where
  closedClosed : K.closed
  positiveClosed : K.positive
  compatibilityClosed : K.compatibility

def KahlerMetricClosed {C : ComplexStructurePackage} (K : KahlerMetricPackage C) : Prop :=
  K.closed ∧ K.positive ∧ K.compatibility

theorem kahler_metric_closed_from_evidence {C : ComplexStructurePackage} (K : KahlerMetricPackage C) (E : KahlerMetricEvidence K) : KahlerMetricClosed K := by
  exact And.intro E.closedClosed (And.intro E.positiveClosed E.compatibilityClosed)

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse