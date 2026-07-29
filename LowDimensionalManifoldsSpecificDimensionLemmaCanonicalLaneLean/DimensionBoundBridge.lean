import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.SpecificDimensionLemma

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure DimensionBoundBridge where
  lowDimensionBound : Nat
  classificationUpToBound : Prop
  geometricRealization : Prop

structure DimensionBoundBridgeEvidence (B : DimensionBoundBridge) where
  classificationUpToBoundClosed : B.classificationUpToBound
  geometricRealizationClosed : B.geometricRealization

def DimensionBoundBridgeClosed (B : DimensionBoundBridge) : Prop :=
  B.classificationUpToBound ∧ B.geometricRealization

theorem dimension_bound_bridge_closed_from_evidence
    (B : DimensionBoundBridge) (E : DimensionBoundBridgeEvidence B) :
    DimensionBoundBridgeClosed B := by
  exact And.intro E.classificationUpToBoundClosed
    E.geometricRealizationClosed

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse