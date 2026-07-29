import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure LowDimSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  dimension : ℕ

structure LowDimAdmittedObject where
  space : LowDimSpace
  lowDimensional : space.dimension ≤ 3
  specificDimension : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure LowDimEndgameState where
  object : LowDimAdmittedObject

def LowDimWitnessClosed (O : LowDimAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse