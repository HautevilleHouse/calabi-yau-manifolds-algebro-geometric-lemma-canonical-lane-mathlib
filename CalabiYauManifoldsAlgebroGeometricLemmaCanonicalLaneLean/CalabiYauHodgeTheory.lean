import HautevilleHouse.CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.CalabiYauObjects

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure HodgeDiamondPackage where
  hodgeNumbers : ℕ → ℕ → ℕ
  symmetry : ∀ p q, hodgeNumbers p q = hodgeNumbers q p
  hardLefschetz : Prop
  primitiveDecomposition : Prop

structure HodgeDiamondEvidence (H : HodgeDiamondPackage) where
  symmetryClosed : ∀ p q, H.hodgeNumbers p q = H.hodgeNumbers q p
  hardLefschetzClosed : H.hardLefschetz
  primitiveDecompositionClosed : H.primitiveDecomposition

def HodgeDiamondClosed (H : HodgeDiamondPackage) : Prop :=
  (∀ p q, H.hodgeNumbers p q = H.hodgeNumbers q p) ∧
  H.hardLefschetz ∧ H.primitiveDecomposition

theorem hodge_diamond_closed_from_evidence (H : HodgeDiamondPackage)
    (E : HodgeDiamondEvidence H) : HodgeDiamondClosed H := by
  exact And.intro E.symmetryClosed (And.intro E.hardLefschetzClosed E.primitiveDecompositionClosed)

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse