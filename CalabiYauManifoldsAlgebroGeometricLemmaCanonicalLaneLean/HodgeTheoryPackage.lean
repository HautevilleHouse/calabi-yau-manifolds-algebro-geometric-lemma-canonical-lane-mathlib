import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.KahlerGeometryPackage

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure HodgeStructurePackage {G : ComplexStructurePackage} {K : KahlerMetricPackage G} where
  hodgeNumbers : Type u
  hodgeDecomposition : Prop
  hodgeDiamondSymmetry : Prop
  hodgeFiltration : Prop

structure HodgeStructureEvidence {G : ComplexStructurePackage} {K : KahlerMetricPackage G} (H : HodgeStructurePackage K) where
  hodgeDecompositionClosed : H.hodgeDecomposition
  hodgeDiamondSymmetryClosed : H.hodgeDiamondSymmetry
  hodgeFiltrationClosed : H.hodgeFiltration

def HodgeStructureClosed {G : ComplexStructurePackage} {K : KahlerMetricPackage G} (H : HodgeStructurePackage K) : Prop :=
  H.hodgeDecomposition ∧ H.hodgeDiamondSymmetry ∧ H.hodgeFiltration

theorem hodge_structure_closed_from_evidence {G : ComplexStructurePackage} {K : KahlerMetricPackage G}
    (H : HodgeStructurePackage K) (E : HodgeStructureEvidence H) : HodgeStructureClosed H := by
  exact And.intro E.hodgeDecompositionClosed
    (And.intro E.hodgeDiamondSymmetryClosed E.hodgeFiltrationClosed)

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse