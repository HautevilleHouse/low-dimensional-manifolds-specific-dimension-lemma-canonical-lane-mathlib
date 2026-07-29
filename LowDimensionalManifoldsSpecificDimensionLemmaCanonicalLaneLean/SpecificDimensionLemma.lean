import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure SpecificDimensionLemma where
  dimension : Nat
  dimensionAtMostThree : dimension ≤ 3
  classificationInLowDimensions : Prop
  obstructionVanishing : Prop

structure SpecificDimensionLemmaEvidence (S : SpecificDimensionLemma) where
  classificationInLowDimensionsClosed : S.classificationInLowDimensions
  obstructionVanishingClosed : S.obstructionVanishing

def SpecificDimensionLemmaClosed (S : SpecificDimensionLemma) : Prop :=
  S.classificationInLowDimensions ∧ S.obstructionVanishing

theorem specific_dimension_lemma_closed_from_evidence
    (S : SpecificDimensionLemma) (E : SpecificDimensionLemmaEvidence S) :
    SpecificDimensionLemmaClosed S := by
  exact And.intro E.classificationInLowDimensionsClosed
    E.obstructionVanishingClosed

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse