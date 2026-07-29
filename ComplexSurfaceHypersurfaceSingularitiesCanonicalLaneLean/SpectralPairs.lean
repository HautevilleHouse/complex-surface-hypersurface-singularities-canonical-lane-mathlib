import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure SpectralPairsPackage where
  vanishingCohomology : Type u
  mixedHodgeStructure : Prop
  spectralPairs : List (Nat × Nat)
  spectralPairsComputed : Prop

structure SpectralPairsEvidence (S : SpectralPairsPackage) where
  mixedHodgeStructureClosed : S.mixedHodgeStructure
  spectralPairsComputedClosed : S.spectralPairsComputed

def SpectralPairsClosed (S : SpectralPairsPackage) : Prop :=
  S.mixedHodgeStructure ∧ S.spectralPairsComputed

theorem spectral_pairs_closed_from_evidence (S : SpectralPairsPackage) (E : SpectralPairsEvidence S) : SpectralPairsClosed S := by
  exact And.intro E.mixedHodgeStructureClosed E.spectralPairsComputedClosed

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse