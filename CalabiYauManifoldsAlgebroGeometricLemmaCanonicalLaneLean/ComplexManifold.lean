import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure ComplexManifoldPackage where
  manifold : Type u
  complexStructure : Type v
  integrableAlmostComplex : Prop
  complexDimension : Nat
  complexDimensionThree : complexDimension = 3
  smoothComplexCoordinateCharts : Prop
  hausdorffSecondCountable : Prop
  compactWithoutBoundary : Prop
  connected : Prop

structure ComplexManifoldEvidence (M : ComplexManifoldPackage) where
  integrableAlmostComplexClosed : M.integrableAlmostComplex
  smoothComplexCoordinateChartsClosed : M.smoothComplexCoordinateCharts
  hausdorffSecondCountableClosed : M.hausdorffSecondCountable
  compactWithoutBoundaryClosed : M.compactWithoutBoundary
  connectedClosed : M.connected

def ComplexManifoldClosed (M : ComplexManifoldPackage) : Prop :=
  M.integrableAlmostComplex ∧ M.smoothComplexCoordinateCharts ∧
  M.hausdorffSecondCountable ∧ M.compactWithoutBoundary ∧ M.connected

theorem complex_manifold_closed_from_evidence (M : ComplexManifoldPackage)
    (E : ComplexManifoldEvidence M) : ComplexManifoldClosed M := by
  exact And.intro E.integrableAlmostComplexClosed
    (And.intro E.smoothComplexCoordinateChartsClosed
      (And.intro E.hausdorffSecondCountableClosed
        (And.intro E.compactWithoutBoundaryClosed E.connectedClosed)))

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse