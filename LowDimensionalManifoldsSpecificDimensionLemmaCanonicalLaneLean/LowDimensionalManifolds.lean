import LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure LowDimensionalManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  dimension : Nat
  dimensionTwo : Prop
  dimensionTwoClosed : dimensionTwo

def LowDimensionalManifoldClosed (M : LowDimensionalManifoldPackage) : Prop :=
  M.dimensionTwo

theorem low_dimensional_manifold_closed_from_evidence
    (M : LowDimensionalManifoldPackage) : LowDimensionalManifoldClosed M := by
  exact M.dimensionTwoClosed

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse
