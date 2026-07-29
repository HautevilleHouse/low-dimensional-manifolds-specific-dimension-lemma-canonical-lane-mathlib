import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure SpecificDimensionLemmaAdmittedObject where
  manifoldType : Type u
  topology : TopologicalSpace manifoldType
  dimension : ℕ
  dimensionBound : dimension = 2 ∨ dimension = 3 ∨ dimension = 4
  sufficientCondition : Prop
  conclusion : sufficientCondition

structure AdmissibleClass where
  object : SpecificDimensionLemmaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse
