import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure HypersurfaceLocalRing where
  ring : Type u
  maximalIdeal : ring → Prop
  residueField : Type v
  embeddingDimension : ℕ
  milnorNumber : ℕ
  tjurinaNumber : ℕ

structure HypersurfaceLocalRingEvidence (H : HypersurfaceLocalRing) where
  embeddingDimensionClosed : H.embeddingDimension = 2
  milnorNumberClosed : H.milnorNumber = H.tjurinaNumber

def HypersurfaceLocalRingClosed (H : HypersurfaceLocalRing) : Prop :=
  H.embeddingDimension = 2 ∧ H.milnorNumber = H.tjurinaNumber

theorem hypersurface_local_ring_closed_from_evidence (H : HypersurfaceLocalRing) (E : HypersurfaceLocalRingEvidence H) : HypersurfaceLocalRingClosed H := by
  exact And.intro E.embeddingDimensionClosed E.milnorNumberClosed

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse