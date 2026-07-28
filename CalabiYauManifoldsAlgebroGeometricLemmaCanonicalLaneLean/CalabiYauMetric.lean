import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure RicciFlatMetricPackage (C : ComplexManifoldPackage) where
  kahlerMetric : Type w
  ricciFlatCondition : Prop
  calabiYauCondition : Prop
  yauTheoremConclusion : Prop

structure RicciFlatMetricEvidence {C : ComplexManifoldPackage}
    (R : RicciFlatMetricPackage C) where
  ricciFlatConditionClosed : R.ricciFlatCondition
  calabiYauConditionClosed : R.calabiYauCondition
  yauTheoremConclusionClosed : R.yauTheoremConclusion

def RicciFlatMetricClosed {C : ComplexManifoldPackage}
    (R : RicciFlatMetricPackage C) : Prop :=
  R.ricciFlatCondition ∧ R.calabiYauCondition ∧ R.yauTheoremConclusion

theorem ricci_flat_metric_closed_from_evidence {C : ComplexManifoldPackage}
    (R : RicciFlatMetricPackage C) (E : RicciFlatMetricEvidence R) :
    RicciFlatMetricClosed R := by
  exact And.intro E.ricciFlatConditionClosed
    (And.intro E.calabiYauConditionClosed E.yauTheoremConclusionClosed)

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse