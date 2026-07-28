import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.CalabiYauCondition

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure YauTheoremPackage {C : CalabiYauPackage} where
  kahlerMetricExists : Prop
  ricciFlatEquation : Prop
  complexMongeAmpere : Prop
  aPrioriEstimates : Prop
  continuityMethod : Prop
  uniqueness : Prop

structure YauTheoremEvidence {C : CalabiYauPackage} (Y : YauTheoremPackage C) where
  kahlerMetricExistsClosed : Y.kahlerMetricExists
  ricciFlatEquationClosed : Y.ricciFlatEquation
  complexMongeAmpereClosed : Y.complexMongeAmpere
  aPrioriEstimatesClosed : Y.aPrioriEstimates
  continuityMethodClosed : Y.continuityMethod
  uniquenessClosed : Y.uniqueness

def YauTheoremClosed {C : CalabiYauPackage} (Y : YauTheoremPackage C) : Prop :=
  Y.kahlerMetricExists ∧ Y.ricciFlatEquation ∧ Y.complexMongeAmpere ∧ Y.aPrioriEstimates ∧ Y.continuityMethod ∧ Y.uniqueness

theorem yau_theorem_closed_from_evidence {C : CalabiYauPackage} (Y : YauTheoremPackage C) (E : YauTheoremEvidence Y) : YauTheoremClosed Y := by
  exact And.intro E.kahlerMetricExistsClosed
    (And.intro E.ricciFlatEquationClosed
      (And.intro E.complexMongeAmpereClosed
        (And.intro E.aPrioriEstimatesClosed
          (And.intro E.continuityMethodClosed E.uniquenessClosed))))

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse
