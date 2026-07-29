import LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.LowDimAdmittedObject

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure SpecificDimensionPackage (O : LowDimAdmittedObject) where
  dimensionBound : O.space.dimension ≤ 3
  dimensionTwoOrThree : O.space.dimension = 2 ∨ O.space.dimension = 3
  classificationClosed : Prop

theorem dimension_lemma_endpoint (O : LowDimAdmittedObject) :
    O.specificDimension := by
  exact O.specificDimension

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse