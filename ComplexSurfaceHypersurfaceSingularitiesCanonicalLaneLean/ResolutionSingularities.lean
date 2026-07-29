import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure ResolutionSingularitiesPackage where
  surface : Type u
  surfaceTopology : TopologicalSpace surface
  singularitySet : Set surface
  resolutionMap : Type v
  resolutionExists : Prop
  exceptionalDivisor : Prop

structure ResolutionSingularitiesEvidence (R : ResolutionSingularitiesPackage) where
  resolutionExistsClosed : R.resolutionExists
  exceptionalDivisorClosed : R.exceptionalDivisor

def ResolutionSingularitiesClosed (R : ResolutionSingularitiesPackage) : Prop :=
  R.resolutionExists ∧ R.exceptionalDivisor

theorem resolution_singularities_closed_from_evidence (R : ResolutionSingularitiesPackage) (E : ResolutionSingularitiesEvidence R) : ResolutionSingularitiesClosed R := by
  exact And.intro E.resolutionExistsClosed E.exceptionalDivisorClosed

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse