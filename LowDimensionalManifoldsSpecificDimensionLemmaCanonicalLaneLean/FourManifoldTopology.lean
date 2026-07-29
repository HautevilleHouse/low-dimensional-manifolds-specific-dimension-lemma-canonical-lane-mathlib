import canonicalLaneMathlib.AdmissibleClass
import LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean.SpecificDimensionLemma

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean

structure FourManifoldTopologyPackage where
  intersectionForm : Type
  signature : ℤ
  simplyConnected : Prop
  homeomorphismClassification : Prop
  smoothStructure : Prop

structure FourManifoldTopologyEvidence (F : FourManifoldTopologyPackage) where
  simplyConnectedClosed : F.simplyConnected
  homeomorphismClassificationClosed : F.homeomorphismClassification
  smoothStructureClosed : F.smoothStructure

def FourManifoldTopologyClosed (F : FourManifoldTopologyPackage) : Prop :=
  F.simplyConnected ∧ F.homeomorphismClassification ∧ F.smoothStructure

theorem four_manifold_topology_closed_from_evidence (F : FourManifoldTopologyPackage)
    (E : FourManifoldTopologyEvidence F) : FourManifoldTopologyClosed F := by
  exact And.intro E.simplyConnectedClosed
    (And.intro E.homeomorphismClassificationClosed E.smoothStructureClosed)

end LowDimensionalManifoldsSpecificDimensionLemmaCanonicalLaneLean
end HautevilleHouse