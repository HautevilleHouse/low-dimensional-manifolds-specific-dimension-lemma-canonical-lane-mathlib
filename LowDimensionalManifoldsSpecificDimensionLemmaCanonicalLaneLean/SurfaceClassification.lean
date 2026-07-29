import canonicalLaneMathlib.AdmissibleClass
import LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.SpecificDimensionLemma

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure SurfaceClassificationPackage where
  genus : ℕ
  orientable : Prop
  connectedSumDecomposition : Prop
  classificationComplete : Prop

structure SurfaceClassificationEvidence (S : SurfaceClassificationPackage) where
  orientableClosed : S.orientable
  connectedSumDecompositionClosed : S.connectedSumDecomposition
  classificationCompleteClosed : S.classificationComplete

def SurfaceClassificationClosed (S : SurfaceClassificationPackage) : Prop :=
  S.orientable ∧ S.connectedSumDecomposition ∧ S.classificationComplete

theorem surface_classification_closed_from_evidence (S : SurfaceClassificationPackage)
    (E : SurfaceClassificationEvidence S) : SurfaceClassificationClosed S := by
  exact And.intro E.orientableClosed
    (And.intro E.connectedSumDecompositionClosed E.classificationCompleteClosed)

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse