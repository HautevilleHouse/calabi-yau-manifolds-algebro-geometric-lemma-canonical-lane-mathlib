import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure ComplexStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : Type v
  integrable : Prop
  holomorphicCoordinates : Prop
  almostComplexStructure : Prop
  newlanderNirenberg : Prop

structure ComplexStructureEvidence (C : ComplexStructurePackage) where
  integrableClosed : C.integrable
  holomorphicCoordinatesClosed : C.holomorphicCoordinates
  almostComplexStructureClosed : C.almostComplexStructure
  newlanderNirenbergClosed : C.newlanderNirenberg

def ComplexStructureClosed (C : ComplexStructurePackage) : Prop :=
  C.integrable ∧ C.holomorphicCoordinates ∧ C.almostComplexStructure ∧ C.newlanderNirenberg

theorem complex_structure_closed_from_evidence (C : ComplexStructurePackage) (E : ComplexStructureEvidence C) : ComplexStructureClosed C := by
  exact And.intro E.integrableClosed
    (And.intro E.holomorphicCoordinatesClosed
      (And.intro E.almostComplexStructureClosed E.newlanderNirenbergClosed))

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse