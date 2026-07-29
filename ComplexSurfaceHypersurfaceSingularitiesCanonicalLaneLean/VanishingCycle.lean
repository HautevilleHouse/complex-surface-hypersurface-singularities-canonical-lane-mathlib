import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.SteinFactorization

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure VanishingCyclePackage where
  dim : ℕ
  cycleClass : ℤ
  monodromyAction : ℤ → ℤ

structure VanishingCycleEvidence (V : VanishingCyclePackage) where
  dimClosed : V.dim = 1
  cycleClassNonzero : V.cycleClass ≠ 0

def VanishingCycleClosed (V : VanishingCyclePackage) : Prop :=
  V.dim = 1 ∧ V.cycleClass ≠ 0

theorem vanishing_cycle_closed_from_evidence (V : VanishingCyclePackage) (E : VanishingCycleEvidence V) : VanishingCycleClosed V := by
  exact And.intro E.dimClosed E.cycleClassNonzero

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse