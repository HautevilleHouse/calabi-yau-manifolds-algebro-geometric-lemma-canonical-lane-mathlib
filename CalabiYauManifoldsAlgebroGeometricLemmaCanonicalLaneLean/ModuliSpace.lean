import canonicalLaneMathlib.AdmissibleClass
import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.CalabiYauCondition
import CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.DeformationObstruction

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure ModuliSpacePackage {C : CalabiYauPackage} {D : DeformationPackage C} where
  moduliSpaceExists : Prop
  coarseModuliSpace : Prop
  periodMap : Prop
  teichmullerSpace : Prop
  tianTodorovSmoothness : Prop

structure ModuliSpaceEvidence {C : CalabiYauPackage} {D : DeformationPackage C} (M : ModuliSpacePackage C D) where
  moduliSpaceExistsClosed : M.moduliSpaceExists
  coarseModuliSpaceClosed : M.coarseModuliSpace
  periodMapClosed : M.periodMap
  teichmullerSpaceClosed : M.teichmullerSpace
  tianTodorovSmoothnessClosed : M.tianTodorovSmoothness

def ModuliSpaceClosed {C : CalabiYauPackage} {D : DeformationPackage C} (M : ModuliSpacePackage C D) : Prop :=
  M.moduliSpaceExists ∧ M.coarseModuliSpace ∧ M.periodMap ∧ M.teichmullerSpace ∧ M.tianTodorovSmoothness

theorem moduli_space_closed_from_evidence {C : CalabiYauPackage} {D : DeformationPackage C} (M : ModuliSpacePackage C D) (E : ModuliSpaceEvidence M) : ModuliSpaceClosed M := by
  exact And.intro E.moduliSpaceExistsClosed
    (And.intro E.coarseModuliSpaceClosed
      (And.intro E.periodMapClosed
        (And.intro E.teichmullerSpaceClosed E.tianTodorovSmoothnessClosed)))

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse
