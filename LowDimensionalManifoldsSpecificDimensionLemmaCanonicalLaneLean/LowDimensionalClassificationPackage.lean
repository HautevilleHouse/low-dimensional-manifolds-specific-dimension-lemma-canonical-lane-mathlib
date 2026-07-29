import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.SpecificDimensionLemma

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure LowDimensionalClassificationPackage where
  dimensionTwoClassification : Prop
  dimensionThreeClassification : Prop
  primeDecomposition : Prop
  geometrizationForThree : Prop

structure LowDimensionalClassificationEvidence
    (C : LowDimensionalClassificationPackage) where
  dimensionTwoClassificationClosed : C.dimensionTwoClassification
  dimensionThreeClassificationClosed : C.dimensionThreeClassification
  primeDecompositionClosed : C.primeDecomposition
  geometrizationForThreeClosed : C.geometrizationForThree

def LowDimensionalClassificationClosed
    (C : LowDimensionalClassificationPackage) : Prop :=
  C.dimensionTwoClassification ∧ C.dimensionThreeClassification ∧
  C.primeDecomposition ∧ C.geometrizationForThree

theorem low_dimensional_classification_closed_from_evidence
    (C : LowDimensionalClassificationPackage)
    (E : LowDimensionalClassificationEvidence C) :
    LowDimensionalClassificationClosed C := by
  exact And.intro E.dimensionTwoClassificationClosed
    (And.intro E.dimensionThreeClassificationClosed
      (And.intro E.primeDecompositionClosed
        E.geometrizationForThreeClosed))

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse