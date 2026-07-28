import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean

structure CalabiYauSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Type
  kahlerMetric : Type
  ricciFlatCondition : Prop

structure CalabiYauAdmittedObject where
  space : CalabiYauSpace
  compactKahler : Prop
  firstChernClassZero : Prop
  hodgeDiamondSatisfied : Prop
  conclusion : hodgeDiamondSatisfied

structure CalabiYauEndgameState where
  object : CalabiYauAdmittedObject

def CalabiYauWitnessClosed (O : CalabiYauAdmittedObject) : Prop :=
  O.hodgeDiamondSatisfied

end CalabiYauManifoldsAlgebroGeometricLemmaCanonicalLaneLean
end HautevilleHouse