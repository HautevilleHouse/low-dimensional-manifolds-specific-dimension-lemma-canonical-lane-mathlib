import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure DimensionClassificationPackage (A : AdmissibleClass) where
  dimension : ℕ := A.object.dimension
  dimensionBound : dimension = 2 ∨ dimension = 3 ∨ dimension = 4
  surfaceClassification : Prop
  threeManifoldGeometrization : Prop
  fourManifoldClassification : Prop

def DimensionClassificationClosed (A : AdmissibleClass) (P : DimensionClassificationPackage A) : Prop :=
  P.surfaceClassification ∧ P.threeManifoldGeometrization ∧ P.fourManifoldClassification

theorem dimension_classification_projection (A : AdmissibleClass) (P : DimensionClassificationPackage A) :
    DimensionClassificationClosed A P := by
  refine And.intro ?_ (And.intro ?_ ?_)
  · exact P.surfaceClassification
  · exact P.threeManifoldGeometrization
  · exact P.fourManifoldClassification

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse
