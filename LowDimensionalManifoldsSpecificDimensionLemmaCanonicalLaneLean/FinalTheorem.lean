import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

def ConstrainedSpecificDimensionLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_specific_dimension_lemma_endgame (A : AdmissibleClass) :
    ConstrainedSpecificDimensionLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse
