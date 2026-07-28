import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.CalabiYauCondition

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure HodgePackage {C : CalabiYauPackage} where
  hodgeDecomposition : Prop
  hodgeNumbers : Prop
  hodgeDiamond : Prop
  specialKahlerCondition : Prop
  cohomologyRingStructure : Prop

structure HodgeEvidence {C : CalabiYauPackage} (H : HodgePackage C) where
  hodgeDecompositionClosed : H.hodgeDecomposition
  hodgeNumbersClosed : H.hodgeNumbers
  hodgeDiamondClosed : H.hodgeDiamond
  specialKahlerConditionClosed : H.specialKahlerCondition
  cohomologyRingStructureClosed : H.cohomologyRingStructure

def HodgeClosed {C : CalabiYauPackage} (H : HodgePackage C) : Prop :=
  H.hodgeDecomposition ∧ H.hodgeNumbers ∧ H.hodgeDiamond ∧ H.specialKahlerCondition ∧ H.cohomologyRingStructure

theorem hodge_closed_from_evidence {C : CalabiYauPackage} (H : HodgePackage C) (E : HodgeEvidence H) : HodgeClosed H := by
  exact And.intro E.hodgeDecompositionClosed
    (And.intro E.hodgeNumbersClosed
      (And.intro E.hodgeDiamondClosed
        (And.intro E.specialKahlerConditionClosed E.cohomologyRingStructureClosed)))

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse
