import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.KahlerGeometryPackage

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure CalabiYauAlgebroGeometricLemmaPackage {G : ComplexStructurePackage} {K : KahlerMetricPackage G} (R : RicciFlatnessPackage K) where
  hodgeDecomposition : Prop
  mirrorDuality : Prop
  chernClassesVanishing : Prop
  yauTheoremApplied : Prop
  targetGeometry : Prop

structure CalabiYauAlgebroGeometricLemmaEvidence {G : ComplexStructurePackage} {K : KahlerMetricPackage G} {R : RicciFlatnessPackage K} (P : CalabiYauAlgebroGeometricLemmaPackage R) where
  hodgeDecompositionClosed : P.hodgeDecomposition
  mirrorDualityClosed : P.mirrorDuality
  chernClassesVanishingClosed : P.chernClassesVanishing
  yauTheoremAppliedClosed : P.yauTheoremApplied
  targetGeometryClosed : P.targetGeometry

def CalabiYauAlgebroGeometricLemmaClosed {G : ComplexStructurePackage} {K : KahlerMetricPackage G} {R : RicciFlatnessPackage K} (P : CalabiYauAlgebroGeometricLemmaPackage R) : Prop :=
  P.hodgeDecomposition ∧ P.mirrorDuality ∧ P.chernClassesVanishing ∧ P.yauTheoremApplied ∧ P.targetGeometry

theorem calabi_yau_algebro_geometric_lemma_closed_from_evidence
    {G : ComplexStructurePackage} {K : KahlerMetricPackage G} {R : RicciFlatnessPackage K}
    (P : CalabiYauAlgebroGeometricLemmaPackage R) (E : CalabiYauAlgebroGeometricLemmaEvidence P)
    : CalabiYauAlgebroGeometricLemmaClosed P := by
  exact And.intro E.hodgeDecompositionClosed
    (And.intro E.mirrorDualityClosed
      (And.intro E.chernClassesVanishingClosed
        (And.intro E.yauTheoremAppliedClosed E.targetGeometryClosed)))

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse