import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.sufficientCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse
