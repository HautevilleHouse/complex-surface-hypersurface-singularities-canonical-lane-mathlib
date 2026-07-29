import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure CanonicalModelsPackage where
  localRing : Type
  isolatedHypersurfaceSingularity : Prop
  milnorNumberFinite : Prop
  vanishingCohomology : Type
  seifertForm : Type
  milnorLattice : Prop

structure CanonicalModelsEvidence (C : CanonicalModelsPackage) where
  isolatedHypersurfaceSingularityClosed : C.isolatedHypersurfaceSingularity
  milnorNumberFiniteClosed : C.milnorNumberFinite
  milnorLatticeClosed : C.milnorLattice

def CanonicalModelsClosed (C : CanonicalModelsPackage) : Prop :=
  C.isolatedHypersurfaceSingularity ∧ C.milnorNumberFinite ∧ C.milnorLattice

theorem canonical_models_closed_from_evidence (C : CanonicalModelsPackage) (E : CanonicalModelsEvidence C) :
    CanonicalModelsClosed C := by
  exact And.intro E.isolatedHypersurfaceSingularityClosed
    (And.intro E.milnorNumberFiniteClosed E.milnorLatticeClosed)

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse