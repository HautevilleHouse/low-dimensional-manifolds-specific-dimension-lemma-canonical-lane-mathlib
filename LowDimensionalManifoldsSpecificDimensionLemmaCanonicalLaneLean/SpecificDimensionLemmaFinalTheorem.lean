import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

def ConstrainedLowDimensionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_low_dimension_endgame (A : AdmissibleClass) :
    ConstrainedLowDimensionClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (gate_from_admissible_class A)

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse