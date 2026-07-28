import HautevilleHouse.CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean.CalabiYauGateLemmas

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

def ConstrainedCalabiYauClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_calabi_yau_endgame (A : AdmissibleClass) :
    ConstrainedCalabiYauClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse