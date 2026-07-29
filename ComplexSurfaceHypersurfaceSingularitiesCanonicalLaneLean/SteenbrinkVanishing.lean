import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure SteenbrinkVanishingPackage where
  steenbrinkComplex : Type u
  steenbrinkCohomology : Prop
  vanishingCycles : Prop
  nearbyCycles : Prop
  vanishingThm : Prop

structure SteenbrinkVanishingEvidence (S : SteenbrinkVanishingPackage) where
  steenbrinkCohomologyClosed : S.steenbrinkCohomology
  vanishingCyclesClosed : S.vanishingCycles
  nearbyCyclesClosed : S.nearbyCycles
  vanishingThmClosed : S.vanishingThm

def SteenbrinkVanishingClosed (S : SteenbrinkVanishingPackage) : Prop :=
  S.steenbrinkCohomology ∧ S.vanishingCycles ∧ S.nearbyCycles ∧ S.vanishingThm

theorem steenbrink_vanishing_closed_from_evidence (S : SteenbrinkVanishingPackage) (E : SteenbrinkVanishingEvidence S) : SteenbrinkVanishingClosed S := by
  exact And.intro E.steenbrinkCohomologyClosed (And.intro E.vanishingCyclesClosed (And.intro E.nearbyCyclesClosed E.vanishingThmClosed))

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse