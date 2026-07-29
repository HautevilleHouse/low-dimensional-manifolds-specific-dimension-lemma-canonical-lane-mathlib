import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.SpecificDimensionLemma

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure ThreeManifoldGeometrizationLemma where
  primeDecomposition : Prop
  torusDecomposition : Prop
  geometrizationConjecture : Prop
  hyperbolicComponentClassification : Prop

structure ThreeManifoldGeometrizationEvidence
    (G : ThreeManifoldGeometrizationLemma) where
  primeDecompositionClosed : G.primeDecomposition
  torusDecompositionClosed : G.torusDecomposition
  geometrizationConjectureClosed : G.geometrizationConjecture
  hyperbolicComponentClassificationClosed :
    G.hyperbolicComponentClassification

def ThreeManifoldGeometrizationClosed
    (G : ThreeManifoldGeometrizationLemma) : Prop :=
  G.primeDecomposition ∧ G.torusDecomposition ∧
  G.geometrizationConjecture ∧
  G.hyperbolicComponentClassification

theorem three_manifold_geometrization_closed_from_evidence
    (G : ThreeManifoldGeometrizationLemma)
    (E : ThreeManifoldGeometrizationEvidence G) :
    ThreeManifoldGeometrizationClosed G := by
  exact And.intro E.primeDecompositionClosed
    (And.intro E.torusDecompositionClosed
      (And.intro E.geometrizationConjectureClosed
        E.hyperbolicComponentClassificationClosed))

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse