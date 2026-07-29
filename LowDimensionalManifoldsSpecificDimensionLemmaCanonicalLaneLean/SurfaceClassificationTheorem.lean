import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure SurfaceClassificationTheorem where
  closedSurfaceGenusClassification : Prop
  orientableNonOrientableDistinction : Prop
  eulerCharacteristicDetermines : Prop

structure SurfaceClassificationTheoremEvidence
    (S : SurfaceClassificationTheorem) where
  closedSurfaceGenusClassificationClosed : S.closedSurfaceGenusClassification
  orientableNonOrientableDistinctionClosed : S.orientableNonOrientableDistinction
  eulerCharacteristicDeterminesClosed : S.eulerCharacteristicDetermines

def SurfaceClassificationTheoremClosed
    (S : SurfaceClassificationTheorem) : Prop :=
  S.closedSurfaceGenusClassification ∧
  S.orientableNonOrientableDistinction ∧
  S.eulerCharacteristicDetermines

theorem surface_classification_theorem_closed_from_evidence
    (S : SurfaceClassificationTheorem)
    (E : SurfaceClassificationTheoremEvidence S) :
    SurfaceClassificationTheoremClosed S := by
  exact And.intro E.closedSurfaceGenusClassificationClosed
    (And.intro E.orientableNonOrientableDistinctionClosed
      E.eulerCharacteristicDeterminesClosed)

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse