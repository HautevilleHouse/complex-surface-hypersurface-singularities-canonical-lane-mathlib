import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure VanishingCohomologyPackage where
  vanishingCycleSheaf : Type
  mixedHodgeStructure : Prop
  seifertFormEquivariant : Prop
  vanKampenTheoremApplied : Prop
  thomSebastianiTypeDecomposition : Prop

structure VanishingCohomologyEvidence (V : VanishingCohomologyPackage) where
  mixedHodgeStructureClosed : V.mixedHodgeStructure
  seifertFormEquivariantClosed : V.seifertFormEquivariant
  vanKampenTheoremAppliedClosed : V.vanKampenTheoremApplied
  thomSebastianiTypeDecompositionClosed : V.thomSebastianiTypeDecomposition

def VanishingCohomologyClosed (V : VanishingCohomologyPackage) : Prop :=
  V.mixedHodgeStructure ∧ V.seifertFormEquivariant ∧
  V.vanKampenTheoremApplied ∧ V.thomSebastianiTypeDecomposition

theorem vanishing_cohomology_closed_from_evidence (V : VanishingCohomologyPackage) (E : VanishingCohomologyEvidence V) :
    VanishingCohomologyClosed V := by
  exact And.intro E.mixedHodgeStructureClosed
    (And.intro E.seifertFormEquivariantClosed
      (And.intro E.vanKampenTheoremAppliedClosed E.thomSebastianiTypeDecompositionClosed))

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse