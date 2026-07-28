import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.CalabiYauCondition

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure DeformationPackage {C : CalabiYauPackage} where
  tangentSheafCohomology : Prop
  kuranishiMap : Prop
  obstructionFree : Prop
  moduliDimension : Nat
  tianTodorovTheorem : Prop

structure DeformationEvidence {C : CalabiYauPackage} (D : DeformationPackage C) where
  tangentSheafCohomologyClosed : D.tangentSheafCohomology
  kuranishiMapClosed : D.kuranishiMap
  obstructionFreeClosed : D.obstructionFree
  tianTodorovTheoremClosed : D.tianTodorovTheorem

def DeformationClosed {C : CalabiYauPackage} (D : DeformationPackage C) : Prop :=
  D.tangentSheafCohomology ∧ D.kuranishiMap ∧ D.obstructionFree ∧ D.tianTodorovTheorem

theorem deformation_closed_from_evidence {C : CalabiYauPackage} (D : DeformationPackage C) (E : DeformationEvidence D) : DeformationClosed D := by
  exact And.intro E.tangentSheafCohomologyClosed
    (And.intro E.kuranishiMapClosed
      (And.intro E.obstructionFreeClosed E.tianTodorovTheoremClosed))

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse
